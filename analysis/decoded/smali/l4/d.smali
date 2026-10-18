.class public final synthetic Ll4/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic i:Ll4/d;


# instance fields
.field public final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ll4/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll4/d;-><init>(I)V

    sput-object v0, Ll4/d;->i:Ll4/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ll4/d;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Ll4/d;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Ll4/c$b;

    check-cast p2, Ll4/c$b;

    .line 1
    sget-object v0, Lu6/p;->a:Lu6/p$a;

    iget-wide v1, p1, Ll4/c$b;->h:J

    iget-wide v3, p2, Ll4/c$b;->h:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Lu6/p$a;->g(I)Lu6/p;

    move-result-object v0

    .line 3
    iget-wide v1, p1, Ll4/c$b;->i:J

    iget-wide v3, p2, Ll4/c$b;->i:J

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lu6/p;->b(JJ)Lu6/p;

    move-result-object v0

    iget p1, p1, Ll4/c$b;->j:I

    iget p2, p2, Ll4/c$b;->j:I

    .line 5
    invoke-virtual {v0, p1, p2}, Lu6/p;->a(II)Lu6/p;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lu6/p;->f()I

    move-result p1

    return p1

    .line 7
    :goto_1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 8
    sget-object v0, Lu6/p;->a:Lu6/p$a;

    sget-object v1, Lj5/b;->j:Lj5/b;

    .line 9
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5/i$h;

    sget-object v2, Lj5/k;->h:Lj5/k;

    .line 10
    invoke-static {p2, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj5/i$h;

    sget-object v3, Ls4/a;->k:Ls4/a;

    .line 11
    invoke-virtual {v3, v1, v2}, Ls4/a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lu6/p$a;->g(I)Lu6/p;

    move-result-object v0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lu6/p;->a(II)Lu6/p;

    move-result-object v0

    sget-object v1, Lj5/g;->j:Lj5/g;

    .line 13
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/i$h;

    sget-object v1, Lj5/f;->j:Lj5/f;

    .line 14
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj5/i$h;

    sget-object v1, Lg0/d;->j:Lg0/d;

    .line 15
    invoke-virtual {v0, p1, p2, v1}, Lu6/p;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu6/p;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lu6/p;->f()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
