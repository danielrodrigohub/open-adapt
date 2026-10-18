.class public final Ly1/l0;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/l0$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lp/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly1/l0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lk2/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly1/l0;->a:Z

    .line 3
    new-instance v1, Lp/c;

    .line 4
    invoke-direct {v1, v0}, Lp/c;-><init>(I)V

    .line 5
    iput-object v1, p0, Ly1/l0;->b:Lp/c;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ly1/l0;->c:Ljava/util/HashMap;

    return-void
.end method
