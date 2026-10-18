package com.openadapt;
import android.content.Context;
import android.graphics.*;
import android.view.View;

/** Original schematic of the lace path; previews are separate from confirmed readings. */
final class LaceArtwork extends View {
    final Paint p=new Paint(3);final int side;
    int actual=-1,target=-1;boolean chosen,moving,blocked;
    LaceArtwork(Context context,int s){super(context);side=s;setFocusable(true);}
    void state(int value,int preview,boolean selected,boolean active,boolean locked){
        if(actual==value&&target==preview&&chosen==selected&&moving==active&&blocked==locked)return;
        actual=value;target=preview;chosen=selected;moving=active;blocked=locked;
        setContentDescription((side==0?"Zapatilla izquierda":"Zapatilla derecha")+", "+(value<0?"sin lectura":value+" % confirmado")+(selected?", seleccionada":"")+(locked?", ajuste bloqueado":""));invalidate();
    }
    @Override protected void onDraw(Canvas c){
        super.onDraw(c);c.save();float scale=Math.min(getWidth()/140f,getHeight()/180f);c.translate((getWidth()-140*scale)/2,(getHeight()-180*scale)/2);c.scale(scale,scale);
        int accent=blocked?0xffb5433d:0xff007f73;
        p.setStyle(Paint.Style.FILL);p.setColor(chosen?0xffe0f3ec:0xffeef1f3);c.drawOval(15,5,125,175,p);
        Path shoe=new Path();shoe.moveTo(43,158);shoe.cubicTo(22,129,27,83,35,47);shoe.cubicTo(43,5,92,5,102,48);shoe.cubicTo(113,88,117,128,96,158);shoe.cubicTo(85,175,54,175,43,158);shoe.close();
        p.setColor(0xffffffff);c.drawPath(shoe,p);p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(chosen?2.7f:1.5f);p.setColor(chosen?accent:0xffc5d0d3);c.drawPath(shoe,p);
        p.setStyle(Paint.Style.FILL);p.setColor(0xff243c40);c.drawRoundRect(46,127,94,155,15,15,p);p.setColor(0xffccd8db);c.drawRoundRect(53,134,87,151,10,10,p);
        float amount=(target>=0?target:actual>=0?actual:30)/100f;float gap=20-9*amount;
        p.setStyle(Paint.Style.STROKE);p.setStrokeWidth(moving?3.6f:2.8f);p.setStrokeCap(Paint.Cap.ROUND);p.setColor(chosen?accent:0xff7a9296);
        for(int i=0;i<5;i++){float y=53+i*13;c.drawLine(70-gap,y,70+gap,y+10,p);c.drawLine(70+gap,y,70-gap,y+10,p);}
        if(target>=0&&target!=actual){p.setStrokeWidth(1.4f);p.setPathEffect(new DashPathEffect(new float[]{3,4},0));c.drawRoundRect(40,41,100,124,15,15,p);p.setPathEffect(null);}
        if(moving){p.setColor(accent);c.drawArc(18,8,122,172,-90,(System.currentTimeMillis()%1200)/1200f*330,false,p);postInvalidateDelayed(80);}
        c.restore();
    }
}
