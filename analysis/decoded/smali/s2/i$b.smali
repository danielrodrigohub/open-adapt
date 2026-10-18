.class public final Ls2/i$b;
.super Ls2/c;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls2/c<",
        "Ls2/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls2/l;
    .locals 1

    new-instance v0, Ls2/i$a;

    invoke-direct {v0, p0}, Ls2/i$a;-><init>(Ls2/i$b;)V

    return-object v0
.end method

.method public final d(ILjava/lang/Class;)Ls2/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls2/i$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls2/c;->b()Ls2/l;

    move-result-object v0

    check-cast v0, Ls2/i$a;

    .line 2
    iput p1, v0, Ls2/i$a;->b:I

    .line 3
    iput-object p2, v0, Ls2/i$a;->c:Ljava/lang/Class;

    return-object v0
.end method
