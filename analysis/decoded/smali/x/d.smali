.class public final Lx/d;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Landroid/app/Application;

.field public final synthetic i:Lx/f$a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lx/f$a;)V
    .locals 0

    iput-object p1, p0, Lx/d;->h:Landroid/app/Application;

    iput-object p2, p0, Lx/d;->i:Lx/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx/d;->h:Landroid/app/Application;

    iget-object v1, p0, Lx/d;->i:Lx/f$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
