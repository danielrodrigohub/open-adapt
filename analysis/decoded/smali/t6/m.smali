.class public final Lt6/m;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/m$a;,
        Lt6/m$b;
    }
.end annotation


# instance fields
.field public final a:Lt6/b;

.field public final b:Lt6/m$b;

.field public final c:I


# direct methods
.method public constructor <init>(Lt6/m$b;)V
    .locals 1

    .line 1
    sget-object v0, Lt6/b$d;->i:Lt6/b$d;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lt6/m;->b:Lt6/m$b;

    .line 4
    iput-object v0, p0, Lt6/m;->a:Lt6/b;

    const p1, 0x7fffffff

    .line 5
    iput p1, p0, Lt6/m;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lt6/m;->b:Lt6/m$b;

    check-cast v0, Lt6/l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lt6/k;

    invoke-direct {v1, v0, p0, p1}, Lt6/k;-><init>(Lt6/l;Lt6/m;Ljava/lang/CharSequence;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {v1}, Lt6/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Lt6/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
