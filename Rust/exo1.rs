const SIZE: usize = 10;

fn sort(a: &mut[i32], n:usize) {
	for k in 0..n-1{
		let (idx, v) = min(&a[k..n-1], n-k-1);
		println!("{idx}:{v}");

		a[idx+k] = a[k];
		a[k] = v;
	};
}

fn min(a: &[i32], n: usize) -> (usize, i32) {
	let mut mn: i32 = a[0];
	let mut idx: usize = 0;
	for i in 0..n {
		let elt: i32 = a[i];
		if elt < mn {
			mn = elt;
			idx = i;
		}
	}

	(idx,mn)
}

fn selection(a: &mut [i32; SIZE], k:usize) -> i32 {
	sort(a, SIZE+1);
	a[k-1]
}

fn main() {
	let mut a = [1,8,3,4,7,9,2,5,7,6];
	let s = selection(&mut a, 3);
	println!("{s}");
	println!("{:?}",a);
}
