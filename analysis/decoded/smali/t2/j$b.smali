.class public final Lt2/j$b;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"

# interfaces
.implements Lm3/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final h:Ljava/security/MessageDigest;

.field public final i:Lm3/d$a;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm3/d$a;

    invoke-direct {v0}, Lm3/d$a;-><init>()V

    .line 3
    iput-object v0, p0, Lt2/j$b;->i:Lm3/d$a;

    .line 4
    iput-object p1, p0, Lt2/j$b;->h:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final j()Lm3/d;
    .locals 1

    iget-object v0, p0, Lt2/j$b;->i:Lm3/d$a;

    return-object v0
.end method
