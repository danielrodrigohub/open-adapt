.class public final Lwc/c;
.super Ljava/lang/Object;
.source "RequestWithRetryParams.kt"


# static fields
.field public static final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lzd/a;->i:Lzd/a$a;

    .line 2
    sget-object v0, Lzd/c;->k:Lzd/c;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lc3/d;->q(ILzd/c;)J

    move-result-wide v0

    .line 3
    sput-wide v0, Lwc/c;->a:J

    return-void
.end method
