.class public final Lp3/w$h;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Ln3/m1;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ln3/m1;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/w$h;->a:Ln3/m1;

    .line 3
    iput-boolean p2, p0, Lp3/w$h;->b:Z

    .line 4
    iput-wide p3, p0, Lp3/w$h;->c:J

    .line 5
    iput-wide p5, p0, Lp3/w$h;->d:J

    return-void
.end method
