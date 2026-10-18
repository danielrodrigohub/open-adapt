.class public final Ln3/z1$b;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Ln3/z1;


# direct methods
.method public constructor <init>(Ln3/z1;)V
    .locals 0

    iput-object p1, p0, Ln3/z1$b;->a:Ln3/z1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/z1$b;->a:Ln3/z1;

    .line 2
    iget-object p2, p1, Ln3/z1;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/g1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/g1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
