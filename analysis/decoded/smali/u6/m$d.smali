.class public final Lu6/m$d;
.super Lu6/e;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public i:I

.field public final synthetic j:Lu6/m;


# direct methods
.method public constructor <init>(Lu6/m;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lu6/m$d;->j:Lu6/m;

    invoke-direct {p0}, Lu6/e;-><init>()V

    .line 2
    sget-object v0, Lu6/m;->q:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, p2}, Lu6/m;->f(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lu6/m$d;->h:Ljava/lang/Object;

    .line 5
    iput p2, p0, Lu6/m$d;->i:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lu6/m$d;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lu6/m$d;->j:Lu6/m;

    .line 2
    invoke-virtual {v1}, Lu6/m;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lu6/m$d;->h:Ljava/lang/Object;

    iget-object v1, p0, Lu6/m$d;->j:Lu6/m;

    iget v2, p0, Lu6/m$d;->i:I

    .line 3
    invoke-virtual {v1, v2}, Lu6/m;->f(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lu6/m$d;->j:Lu6/m;

    iget-object v1, p0, Lu6/m$d;->h:Ljava/lang/Object;

    sget-object v2, Lu6/m;->q:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Lu6/m;->d(Ljava/lang/Object;)I

    move-result v0

    .line 7
    iput v0, p0, Lu6/m$d;->i:I

    :cond_1
    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lu6/m$d;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m$d;->j:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lu6/m$d;->h:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lu6/m$d;->a()V

    .line 4
    iget v0, p0, Lu6/m$d;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lu6/m$d;->j:Lu6/m;

    .line 5
    invoke-virtual {v1, v0}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m$d;->j:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lu6/m$d;->h:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lu6/m$d;->a()V

    .line 4
    iget v0, p0, Lu6/m$d;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lu6/m$d;->j:Lu6/m;

    iget-object v1, p0, Lu6/m$d;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lu6/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    iget-object v1, p0, Lu6/m$d;->j:Lu6/m;

    .line 7
    invoke-virtual {v1, v0}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lu6/m$d;->j:Lu6/m;

    iget v2, p0, Lu6/m$d;->i:I

    .line 9
    invoke-virtual {v1}, Lu6/m;->m()[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, v2

    return-object v0
.end method
