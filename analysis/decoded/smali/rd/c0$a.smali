.class public final Lrd/c0$a;
.super Lrd/o;
.source "TypeReference.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrd/c0;->d(Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lwd/h;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lrd/c0;


# direct methods
.method public constructor <init>(Lrd/c0;)V
    .locals 0

    iput-object p1, p0, Lrd/c0$a;->h:Lrd/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lwd/h;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lrd/c0$a;->h:Lrd/c0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p1, Lwd/h;->a:I

    if-nez v0, :cond_0

    const-string p1, "*"

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p1, Lwd/h;->b:Lwd/g;

    .line 7
    instance-of v1, v0, Lrd/c0;

    if-eqz v1, :cond_1

    check-cast v0, Lrd/c0;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lrd/c0;->d(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p1, Lwd/h;->b:Lwd/g;

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_3
    iget p1, p1, Lwd/h;->a:I

    .line 11
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    const-string p1, "out "

    .line 12
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_4
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_5
    const-string p1, "in "

    .line 14
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v0

    :goto_1
    return-object p1
.end method
