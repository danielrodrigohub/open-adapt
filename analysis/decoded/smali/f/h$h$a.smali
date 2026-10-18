.class public final Lf/h$h$a;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/h$h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/h$h;


# direct methods
.method public constructor <init>(Lf/h$h;)V
    .locals 0

    iput-object p1, p0, Lf/h$h$a;->a:Lf/h$h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lf/h$h$a;->a:Lf/h$h;

    invoke-virtual {p1}, Lf/h$h;->d()V

    return-void
.end method
