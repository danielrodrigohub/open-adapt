.class public final Lp4/e0$a$a;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/e0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lp4/e0;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lp4/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/e0$a$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lp4/e0$a$a;->b:Lp4/e0;

    return-void
.end method
