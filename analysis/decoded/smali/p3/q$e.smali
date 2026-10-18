.class public final Lp3/q$e;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final h:I

.field public final i:Z

.field public final j:Ln3/s0;


# direct methods
.method public constructor <init>(ILn3/s0;Z)V
    .locals 1

    const-string v0, "AudioTrack write failed: "

    .line 1
    invoke-static {v0, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    iput-boolean p3, p0, Lp3/q$e;->i:Z

    .line 4
    iput p1, p0, Lp3/q$e;->h:I

    .line 5
    iput-object p2, p0, Lp3/q$e;->j:Ln3/s0;

    return-void
.end method
