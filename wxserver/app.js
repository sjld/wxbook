const express=require("express");
const pool=require("./pool");
const bodyParser=require('body-parser');
const session = require('express-session');
var app=express();
const cors=require("cors");
/*app.use(cors({
  origin:["http://127.0.0.1:3001","http://localhost:3001"],
  credentials:true
}))*/
app.use(bodyParser.urlencoded({
	extended:false
}));
app.use(express.static(__dirname+"/public"));
app.listen(4000,(req,res)=>{
  console.log("ok");
});
app.get("/bannerlist",(req,res)=>{
  var obj=[
    {id:1,img_url:"http://127.0.0.1:4000/img/banner1.jpg"},
    {id:2,img_url:"http://127.0.0.1:4000/img/banner2.jpg"},
    {id:3,img_url:"http://127.0.0.1:4000/img/banner3.jpg"},
  ];
  res.send(obj)
});
app.get("/recommend",(req,res)=>{
    var sql="select pic,title,details,price from recommend";
	pool.query(sql,[],(err,result)=>{
	  if(err) console.log(err)
	  res.send(result)
	})
});
app.get("/getbooks",(req,res)=>{
   var sql="select id,pic,title,price from shop";
   pool.query(sql,[],(err,result)=>{
     if(err) console.log(err) 
		 res.send(result)
   })
});
app.post("/search",(req,res)=>{
   var value=req.body.value;
   var text=req.body.text;
   var grade=req.body.grade;
   var content=req.body.content;
   console.log(content)
   if(text!=""){
    var sql=`select pic,title,price from shop where project like '%${text}%'`
    pool.query(sql,[],(err,result)=>{
       if(err) console.log(err)
       res.send(result)
    })
   }
   else if(value!=""){
     var sql=`select pic,title,price from shop where project like '%${value}%' or title like '%${value}%' or grade like '%${value}%' or version like '%${value}%'`;
     pool.query(sql,[],(err,result)=>{
      if(err) console.log(err)
      res.send(result)
    })
   }
  else if(grade!=""){
     var sql=`select pic,title,price,grade from shop where grade like '%${grade}%' or title like '%${grade}%'`;
     pool.query(sql,[],(err,result)=>{
       if(err) console.log(err)
       res.send(result)
     })
   }
});
app.get('/explore',(req,res)=>{
  var content=req.query.content;
  if(content!=""){
    var sql =`select pic,title,grade from shop where title like '%${content}%' or grade like '%${content}%' or project like '%${content}%' or version like '%${content}%'`;
    pool.query(sql,[],(err,result)=>{
      if(err) console.log(err)
      res.send(result)
    })
  }
});
app.get('/desc',(req,res)=>{
  var id=req.query.id;
   var sql="select pic, title,price,version,descpic from shop where id=?";
   pool.query(sql,[id],(err,result)=>{
     if(err) {console.log(err)}
     res.send(result)
   })
})
app.post('/cart',(req,res)=>{
  var id=req.body.id;
  var cartnum=req.body.cartnum;
  console.log(id,cartnum)
  var sql="select id, pic,title,price from shop where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) console.log(err)
    var pic= result[0].pic
    var title=result[0].title
    var price=result[0].price
    var sql1="insert into cart (id,pic,title,price,count) values (?,?,?,?,?)";
    pool.query(sql1,[id,pic,title,price,cartnum],(err,result)=>{
      if(err) console.log(err)
      res.send(result)
    })
  })
})
app.get('/cartcontent',(req,res)=>{
   var sql="select id,pic,title,price,count from cart";
   pool.query(sql,[],(err,result)=>{
      if(err) console.log(err)
      res.send(result)
   })
})
app.get('/getcount',(req,res)=>{
  var id=req.query.id;
  var sql="select count from cart where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) console.log(err);
    res.send(result)
  })
})
app.get('/update',(req,res)=>{
  var id=req.query.id;
  var count=req.query.count;
  var sql="update cart set count=? where id=?";
  pool.query(sql,[count,id],(err,result)=>{
    if(err) console.log(err)
    res.send(result)
  })
})
app.get('/getTotal',(req,res)=>{
  var id=req.query.id;
  var sql="select count,price from cart where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) console.log(err);
    res.send(result);
  })
})
app.get('/del',(req,res)=>{
  var id=req.query.id;
  console.log(id);
  var sql="delete from cart where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) console.log(err)
    res.send(result)
  })
})
