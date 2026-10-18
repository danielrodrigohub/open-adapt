.class public final Lp4/l0$b;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ln3/s0;

.field public final b:Lr3/l$b;


# direct methods
.method public constructor <init>(Ln3/s0;Lr3/l$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/l0$b;->a:Ln3/s0;

    .line 3
    iput-object p2, p0, Lp4/l0$b;->b:Lr3/l$b;

    return-void
.end method
