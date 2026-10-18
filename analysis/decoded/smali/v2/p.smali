.class public final Lv2/p;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/p$a;
    }
.end annotation


# instance fields
.field public final a:Lv2/r;

.field public final b:Lv2/p$a;


# direct methods
.method public constructor <init>(Li0/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lv2/r;

    invoke-direct {v0, p1}, Lv2/r;-><init>(Li0/e;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lv2/p$a;

    invoke-direct {p1}, Lv2/p$a;-><init>()V

    iput-object p1, p0, Lv2/p;->b:Lv2/p$a;

    .line 4
    iput-object v0, p0, Lv2/p;->a:Lv2/r;

    return-void
.end method
