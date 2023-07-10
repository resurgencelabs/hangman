use dep::std;


fn didSolve(g: [u8;16], a: [u8; 10]) -> [u8; 3] {
    let mut wrong_guess: u8 = 0;
    let mut contains = false;
    let mut guessed: u8 = 0;
    let mut repeat: u8 = 0;
    for i in 0..16 {
        for j in 0..10 {
            if (g[i] == a[j]) {
                contains = true;
                guessed += 1;
            }
            
        };
        if (!contains) & (guessed < 10) {
            wrong_guess += 1;
        }
        contains = false;
    }
    let g_sort = g.sort();
    for k in 0..15{
        if g_sort[k] == g_sort[k+1]{
            repeat = 1;
        }
    };
    let res = [guessed, wrong_guess, repeat];
    res
}

