package com.openadapt;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.lang.ref.WeakReference;

/** Returns from completed physical onboarding, only while our controller is foreground. */
public final class PairingReturn implements Application.ActivityLifecycleCallbacks,Runnable {
    private static PairingReturn current;
    final Application application;
    final Handler handler=new Handler(Looper.getMainLooper());
    WeakReference<Activity> foreground=new WeakReference<>(null);
    final long deadline=SystemClock.elapsedRealtime()+600000;
    private PairingReturn(Application app){application=app;}
    static void arm(Application app){if(current!=null)current.close();current=new PairingReturn(app);app.registerActivityLifecycleCallbacks(current);current.handler.postDelayed(current,500);}
    void close(){handler.removeCallbacks(this);application.unregisterActivityLifecycleCallbacks(this);foreground.clear();if(current==this)current=null;}
    public void run(){
        if(SystemClock.elapsedRealtime()>deadline){close();return;}
        Activity activity=foreground.get();
        if(activity!=null&&!activity.isFinishing()&&activity.getClass().getName().equals("com.nike.adapt.ui.shoecontroller.ShoeControllerActivity")){
            try{
                Bridge bridge=MotionService.instance==null?new Bridge():MotionService.instance.bridge;
                if(bridge.bind()&&bridge.connected(0)&&bridge.connected(1)){
                    activity.startActivity(new Intent(activity,ControlActivity.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_CLEAR_TOP|Intent.FLAG_ACTIVITY_SINGLE_TOP));
                    // The original onboarding and OpenAdapt controls have separate task affinities.
                    activity.finishAffinity();close();return;
                }
            }catch(Exception ignored){}
        }
        handler.postDelayed(this,500);
    }
    public void onActivityResumed(Activity activity){if(activity instanceof ControlActivity){close();return;}foreground=new WeakReference<>(activity);}
    public void onActivityPaused(Activity activity){if(foreground.get()==activity)foreground.clear();}
    public void onActivityCreated(Activity a,Bundle b){}
    public void onActivityStarted(Activity a){}
    public void onActivityStopped(Activity a){}
    public void onActivitySaveInstanceState(Activity a,Bundle b){}
    public void onActivityDestroyed(Activity a){if(foreground.get()==a)foreground.clear();}
}
