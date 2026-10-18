.class public final Lu6/b0;
.super Lu6/b;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Ljava/util/Iterator;

.field public final synthetic k:Lt6/i;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lt6/i;)V
    .locals 0

    iput-object p1, p0, Lu6/b0;->j:Ljava/util/Iterator;

    iput-object p2, p0, Lu6/b0;->k:Lt6/i;

    invoke-direct {p0}, Lu6/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lu6/b0;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lu6/b0;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lu6/b0;->k:Lt6/i;

    invoke-interface {v1, v0}, Lt6/i;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lu6/b;->h:I

    const/4 v0, 0x0

    return-object v0
.end method
