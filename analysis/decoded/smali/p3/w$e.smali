.class public final Lp3/w$e;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:Lp3/e;

.field public b:Lp3/w$g;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Lp3/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lp3/e;->c:Lp3/e;

    iput-object v0, p0, Lp3/w$e;->a:Lp3/e;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lp3/w$e;->e:I

    .line 4
    sget-object v0, Lp3/w$d;->a:Lp3/x;

    iput-object v0, p0, Lp3/w$e;->f:Lp3/x;

    return-void
.end method
