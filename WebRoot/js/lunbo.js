
		// 轮播图：利用定时器，依次将图片显示

		// 获取所有的li，轮播的元素
		var lis = document.getElementById('lun').children[0].children;
		console.log(lis);

		// 获取所有的数字li
		var num_lis = document.getElementById('num_list').children[0].children;
		// console.log(num_lis);

		// lis 长度为4，下标从0开始

		// 设置i下标，表示第几张图片
		var i = 0;

		// 设置轮播图是否已启动的标志
		var run = null;

		// 获取左箭头/右箭头
		var left = document.getElementById('left');
		var right = document.getElementById('right');

		// 设置定时器函数
		function autoRun(){
			run = setInterval(function(){
				// 当前显示的图片要隐藏
				lis[i].removeAttribute('class');

				// 当前显示激活的数字的背景要被移除
				num_lis[i].children[0].removeAttribute('class');

				// children[0]  === firstElementChild

				// i 下标，自增，表示下一张
				i++;

				// 如果循环到了最后一张图片
				if(i==lis.length){
					i=0;
				}

				// 下一张显示
				lis[i].className = 'active';
				// 下一个数字的背景设置为激活
				num_lis[i].children[0].className = 'active_num';
			},1000);
		}
			

		// 第一次进入该页面，调用轮播函数
		autoRun();

		// 给每一张图都设置鼠标进入、移出的事件
		for(var j=0;j<lis.length;j++){
			// 当鼠标进入到轮播图时，停止
			lis[j].onmouseover = function(){
				// 停止计时器
				clearInterval(run);

				// 显示左右箭头
				left.style.display = 'block';
				right.style.display = 'block';
			}

			// 鼠标离开继续开始
			lis[j].onmouseout = function(){
				// 再次调用轮播函数
				autoRun();

				// 显示左右箭头
				left.style.display = 'none';
				right.style.display = 'none';
			}
		}

		// 给每一个数字都设置鼠标的移入、移出事件
		for(var k=0;k<num_lis.length;k++){
			// 将数字对应的下标绑定到每一个span中
			num_lis[k].firstElementChild.setAttribute('num',k);

			// 移入事件
			num_lis[k].onmouseover = function(){
				// 停止计时器
				clearInterval(run);

				// 移出之前的元素的 ---> i 图片
				lis[i].className = '';
				// 数字列表位置的背景移除
				num_lis[i].firstElementChild.className = '';

				// 上面的图片对应的当前的数字进行显示
				i = this.firstElementChild.getAttribute('num');
				// alert(i);
				// 当前图
				lis[i].className = 'active';
				// 当前数字
				num_lis[i].firstElementChild.className = 'active_num';
			}

			// 移除
			num_lis[k].onmouseout = function(){
				// 重新启动定时器
				autoRun();
			}
		}

		// 当鼠标移入、移除 num_list div时相应的停止、开始
		num_list.onmouseover = function(){
			// 停止
			clearInterval(run);
		}

		num_list.onmouseout = function(){
			// 先清除，再调用
			clearInterval(run);

			// 调用函数
			autoRun();
		}

		// 给右箭头设置over和out事件
		right.onmouseover = function(){ 
			// 显示左右箭头
			left.style.display = 'block';
			right.style.display = 'block';

			// 停止定时器
			clearInterval(run);
		}
		right.onmouseout = function(){
			// 隐藏左右箭头
			left.style.display = 'none';
			right.style.display = 'none';

			// 启动定时器
			autoRun();
		}

		// 当单击右箭头时，图片向前
		right.onclick = function(){
			// 将之前显示的图片、数字隐藏
			lis[i].className = '';
			// 数字列表位置的背景移除
			num_lis[i].firstElementChild.className = '';

			// i++ 之后，显示新的
			i++;

			// 判断临界点
			if(i==lis.length){
				i=0;
			}

			// 新图
			lis[i].className = 'active';
			// 数字列表位置的背景移除
			num_lis[i].firstElementChild.className = 'active_num';			
		}

		// 给左箭头设置over和out事件
		left.onmouseover = function(){ 
			// 显示左右箭头
			left.style.display = 'block';
			right.style.display = 'block';

			// 停止定时器
			clearInterval(run);
		}
		left.onmouseout = function(){
			// 隐藏左右箭头
			left.style.display = 'none';
			right.style.display = 'none';

			// 启动定时器
			autoRun();
		}

		// 当单击右箭头时，图片向前
		left.onclick = function(){
			// 将之前显示的图片、数字隐藏
			lis[i].className = '';
			// 数字列表位置的背景移除
			num_lis[i].firstElementChild.className = '';

			// i的值如果是0，表示当前已经是第一张

			// i++ 之后，显示新的
			i--;

			// 判断临界点
			if(i<0){
				// 下标的最大值 = 长度 - 1
				i=lis.length - 1;
			}

			// 新图
			lis[i].className = 'active';
			// 数字列表位置的背景移除
			num_lis[i].firstElementChild.className = 'active_num';			
		}
