.class public final Ld2/g;
.super Ljava/lang/Object;
.source "LottieCompositionCache.java"


# static fields
.field public static final b:Ld2/g;


# instance fields
.field public final a:Lp/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/e<",
            "Ljava/lang/String;",
            "Ly1/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld2/g;

    invoke-direct {v0}, Ld2/g;-><init>()V

    sput-object v0, Ld2/g;->b:Ld2/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lp/e;-><init>(I)V

    iput-object v0, p0, Ld2/g;->a:Lp/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ly1/i;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld2/g;->a:Lp/e;

    invoke-virtual {v0, p1, p2}, Lp/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
