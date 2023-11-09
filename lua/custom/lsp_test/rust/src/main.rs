fn main() {
    scope_variables();
    allow_unused();
    allow_unused_2();
}

fn scope_variables() {
    let x: i32 = 10;
    let y: i32 = 5;
    {
        println!("x is {} : y is {}", x, y);
    }
    println!("x is {} : y is {}", x, y);
}

#[allow(unused_variables)]
fn allow_unused() {
    let x = 1;
}

fn allow_unused_2() {
    let _x = 1;
}

fn tuple_mutable() {
    let (mut x, y) = (1, 2);
    x += 2;

    assert_eq!(x, 3);
    assert_eq!(y, 2);

    println!("Success!");
}

fn tuple_annotation() {
    let (x, y);
    (x, ..) = (3, 4); // .. discards the value
    (.., y) = (1, 2);
    assert_eq!([x, y], [3, 2]);

    println!("Success!");
}
