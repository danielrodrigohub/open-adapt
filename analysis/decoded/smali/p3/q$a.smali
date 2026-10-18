.class public final Lp3/q$a;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final h:Ln3/s0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln3/s0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lp3/q$a;->h:Ln3/s0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ln3/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, Lp3/q$a;->h:Ln3/s0;

    return-void
.end method
