.class public final synthetic Lj5/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lj5/i$g$a;


# instance fields
.field public final synthetic b:Lj5/i;

.field public final synthetic c:Lj5/i$c;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lj5/i;Lj5/i$c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/d;->b:Lj5/i;

    iput-object p2, p0, Lj5/d;->c:Lj5/i$c;

    iput-boolean p3, p0, Lj5/d;->d:Z

    return-void
.end method


# virtual methods
.method public final a(ILp4/t0;[I)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lj5/d;->b:Lj5/i;

    iget-object v10, v0, Lj5/d;->c:Lj5/i$c;

    iget-boolean v11, v0, Lj5/d;->d:Z

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v12, Lj5/h;

    invoke-direct {v12, v1}, Lj5/h;-><init>(Lj5/i;)V

    .line 2
    sget-object v1, Lu6/v;->i:Lu6/v$b;

    const/4 v1, 0x4

    const-string v2, "initialCapacity"

    .line 3
    invoke-static {v1, v2}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v15, p2

    move v13, v2

    move v14, v13

    .line 4
    :goto_0
    iget v2, v15, Lp4/t0;->h:I

    if-ge v13, v2, :cond_1

    .line 5
    new-instance v16, Lj5/i$a;

    aget v7, p3, v13

    move-object/from16 v2, v16

    move/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v13

    move-object v6, v10

    move v8, v11

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lj5/i$a;-><init>(ILp4/t0;ILj5/i$c;IZLt6/i;)V

    add-int/lit8 v2, v14, 0x1

    .line 6
    array-length v3, v1

    if-ge v3, v2, :cond_0

    .line 7
    array-length v3, v1

    .line 8
    invoke-static {v3, v2}, Lu6/t$b;->a(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 9
    :cond_0
    aput-object v16, v1, v14

    add-int/lit8 v13, v13, 0x1

    move v14, v2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1, v14}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v1

    return-object v1
.end method
