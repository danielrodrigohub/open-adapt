.class public final Lo3/t0$b;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ln3/s0;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln3/s0;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/t0$b;->a:Ln3/s0;

    .line 3
    iput p2, p0, Lo3/t0$b;->b:I

    .line 4
    iput-object p3, p0, Lo3/t0$b;->c:Ljava/lang/String;

    return-void
.end method
