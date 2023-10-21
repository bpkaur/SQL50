class Solution {
    public boolean isPalindrome(int x) {
        int oldx = x;
        if(x < 0)
        {
            return false;
        }
    int temp;
    int newx = 0;
    while(x > 0)
    {
    temp = x % 10;
    newx = temp + newx*10;
    x = x / 10;
    }
    return newx == oldx;    
    }
   
}