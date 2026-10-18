.class public final Lr1/c$a;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr1/c;


# direct methods
.method public constructor <init>(Lr1/c;)V
    .locals 0

    iput-object p1, p0, Lr1/c$a;->a:Lr1/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lr1/c$a;->a:Lr1/c;

    invoke-virtual {p1, p2}, Lr1/c;->g(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
