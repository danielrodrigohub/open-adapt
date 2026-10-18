package com.openadapt;

import android.content.Context;
import android.graphics.*;
import android.view.View;
import java.io.InputStream;

/** Reference-inspired AI product artwork, with a local vector fallback. */
final class ShoeArtwork extends View {
    int rgb=0x25c7ff;
    final Paint paint=new Paint(3);
    Bitmap product; Rect subject;
    ShoeArtwork(Context context) {
        super(context); setContentDescription("Imagen de referencia de una Adapt Auto Max gris, verde petróleo y naranja");
        try(InputStream stream=context.getAssets().open("openadapt/auto-max-hero.png")) {
            product=BitmapFactory.decodeStream(stream);
            if(product!=null) {
                int w=product.getWidth(),h=product.getHeight(),left=w,top=h,right=0,bottom=0;
                int[] pixels=new int[w*h]; product.getPixels(pixels,0,w,0,0,w,h);
                for(int y=0;y<h;y++) for(int x=0;x<w;x++) if((pixels[y*w+x]>>>24)>128) {
                    left=Math.min(left,x);right=Math.max(right,x);top=Math.min(top,y);bottom=Math.max(bottom,y);
                }
                subject=left<=right?new Rect(Math.max(0,left-8),Math.max(0,top-8),Math.min(w,right+9),Math.min(h,bottom+9)):new Rect(0,0,w,h);
            }
        } catch(Exception e) { android.util.Log.w("OpenAdapt","No se pudo cargar la imagen del panel",e); }
    }
    void fill(Canvas c,Path path,int color) { paint.setStyle(Paint.Style.FILL);paint.setColor(color);c.drawPath(path,paint); }
    void line(Canvas c,float x,float y,float x2,float y2,int color,float width) { paint.setStyle(Paint.Style.STROKE);paint.setColor(color);paint.setStrokeWidth(width);paint.setStrokeCap(Paint.Cap.ROUND);c.drawLine(x,y,x2,y2,paint); }
    @Override protected void onDraw(Canvas c) {
        super.onDraw(c);
        if(product!=null) {
            float scale=Math.min(getWidth()/(float)subject.width(),getHeight()/(float)subject.height());
            float w=subject.width()*scale,h=subject.height()*scale;
            c.drawBitmap(product,subject,new RectF((getWidth()-w)/2,(getHeight()-h)/2,(getWidth()+w)/2,(getHeight()+h)/2),paint);
            return;
        }
        c.save(); float scale=Math.min(getWidth()/360f,getHeight()/172f);c.translate((getWidth()-360*scale)/2,(getHeight()-172*scale)/2);c.scale(scale,scale);
        paint.setColor(0x100f2835);paint.setStyle(Paint.Style.FILL);c.drawOval(30,139,333,158,paint);
        Path shoe=new Path();shoe.moveTo(29,106);shoe.cubicTo(55,94,66,72,86,39);shoe.cubicTo(91,29,103,25,112,37);shoe.lineTo(142,69);shoe.lineTo(222,68);shoe.lineTo(247,31);shoe.cubicTo(252,22,262,25,263,38);shoe.lineTo(273,83);shoe.lineTo(310,99);shoe.cubicTo(329,107,338,117,338,132);shoe.lineTo(40,139);shoe.cubicTo(20,132,12,119,29,106);shoe.close();fill(c,shoe,0xffd1d9df);
        Path panel=new Path();panel.moveTo(65,90);panel.lineTo(106,40);panel.lineTo(142,69);panel.lineTo(222,68);panel.lineTo(248,36);panel.lineTo(258,88);panel.lineTo(211,105);panel.lineTo(117,110);panel.close();fill(c,panel,0xffe8edf0);
        line(c,109,53,140,65,0xff9caab7,3);line(c,98,68,129,79,0xff9caab7,3);line(c,87,83,118,94,0xff9caab7,3);
        Path sole=new Path();sole.moveTo(25,119);sole.cubicTo(91,128,176,122,235,121);sole.lineTo(319,117);sole.lineTo(338,128);sole.lineTo(334,140);sole.lineTo(42,144);sole.cubicTo(29,141,21,130,25,119);sole.close();fill(c,sole,0xfff9fbfc);
        line(c,46,141,316,138,0xff9caab7,2);
        paint.setColor(0xff24343d);paint.setStyle(Paint.Style.FILL);c.drawRoundRect(178,108,246,122,7,7,paint);
        paint.setColor(0xff000000|rgb);for(int i=0;i<3;i++)c.drawRoundRect(186+i*19,112,198+i*19,118,3,3,paint);
        line(c,187,125,239,125,0x55000000|rgb,3);c.restore();
    }
}
