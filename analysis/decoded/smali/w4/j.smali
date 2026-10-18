.class public final Lw4/j;
.super Ljava/lang/Object;
.source "RtspPlayResponse.java"


# instance fields
.field public final a:Lw4/l;

.field public final b:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lw4/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw4/l;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lw4/l;",
            "Ljava/util/List<",
            "Lw4/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw4/j;->a:Lw4/l;

    .line 3
    invoke-static {p2}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object p1

    iput-object p1, p0, Lw4/j;->b:Lu6/v;

    return-void
.end method
