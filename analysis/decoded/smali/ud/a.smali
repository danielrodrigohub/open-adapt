.class public final Lud/a;
.super Ltd/a;
.source "PlatformThreadLocalRandom.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltd/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Random;
    .locals 2

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-string v1, "current()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
