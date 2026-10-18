.class public final synthetic Ly0/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Ly0/v;->h:I

    iput-object p1, p0, Ly0/v;->i:Ljava/lang/Object;

    iput-object p2, p0, Ly0/v;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Ly0/v;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    iget-object v0, v1, Ly0/v;->i:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;

    iget-object v0, v1, Ly0/v;->j:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1
    iget-object v9, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/source/rtsp/d;->Y(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/util/List;)V

    .line 2
    sget-object v9, Lcom/google/android/exoplayer2/source/rtsp/h;->b:Ljava/util/regex/Pattern;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "CSeq"

    const-string v12, ""

    const/4 v13, 0x2

    if-eqz v10, :cond_16

    .line 3
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 4
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    invoke-static {v10}, Lm5/a;->a(Z)V

    .line 5
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 8
    invoke-interface {v0, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    move v12, v7

    .line 9
    :goto_0
    invoke-static {v12}, Lm5/a;->a(Z)V

    .line 10
    invoke-interface {v0, v2, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    .line 11
    new-instance v14, Lcom/google/android/exoplayer2/source/rtsp/e$a;

    invoke-direct {v14}, Lcom/google/android/exoplayer2/source/rtsp/e$a;-><init>()V

    invoke-virtual {v14, v12}, Lcom/google/android/exoplayer2/source/rtsp/e$a;->b(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/e$a;

    .line 12
    new-instance v12, Lcom/google/android/exoplayer2/source/rtsp/e;

    invoke-direct {v12, v14}, Lcom/google/android/exoplayer2/source/rtsp/e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/e$a;)V

    .line 13
    sget-object v14, Lcom/google/android/exoplayer2/source/rtsp/h;->h:Ljava/lang/String;

    .line 14
    new-instance v15, Lt6/e;

    invoke-direct {v15, v14}, Lt6/e;-><init>(Ljava/lang/String;)V

    add-int/2addr v10, v2

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v0, v10, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Lt6/e;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 19
    iget-object v11, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 20
    iget-object v11, v11, Lcom/google/android/exoplayer2/source/rtsp/d;->n:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw4/k;

    if-nez v11, :cond_1

    goto/16 :goto_e

    .line 22
    :cond_1
    iget-object v14, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 23
    iget-object v14, v14, Lcom/google/android/exoplayer2/source/rtsp/d;->n:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 25
    iget v10, v11, Lw4/k;->b:I

    const/16 v11, 0xc8

    if-eq v9, v11, :cond_a

    const/16 v0, 0x191

    if-eq v9, v0, :cond_5

    const/16 v0, 0x12d

    if-eq v9, v0, :cond_2

    const/16 v0, 0x12e

    if-eq v9, v0, :cond_2

    goto/16 :goto_3

    .line 26
    :cond_2
    :try_start_0
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 27
    iget v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    if-eq v2, v4, :cond_3

    .line 28
    iput v7, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    :cond_3
    const-string v0, "Location"

    .line 29
    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 30
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 31
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    const-string v2, "Redirection without new location."

    .line 32
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/f$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 33
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/h;->h(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 35
    iput-object v3, v2, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    .line 36
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/h;->f(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/h$a;

    move-result-object v0

    .line 37
    iput-object v0, v2, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/h$a;

    .line 38
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 39
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    .line 40
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    .line 41
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 42
    sget-object v4, Lu6/q0;->n:Lu6/q0;

    .line 43
    invoke-virtual {v2, v13, v0, v4, v3}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lw4/k;

    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c(Lw4/k;)V

    goto/16 :goto_e

    .line 45
    :cond_5
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 46
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/h$a;

    if-eqz v4, :cond_9

    .line 47
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->x:Z

    if-nez v0, :cond_9

    const-string v0, "WWW-Authenticate"

    .line 48
    iget-object v4, v12, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lu6/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lu6/w;->g(Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v7, v3, :cond_7

    .line 51
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 52
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/rtsp/h;->g(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/c;

    move-result-object v4

    .line 53
    iput-object v4, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->u:Lcom/google/android/exoplayer2/source/rtsp/c;

    .line 54
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 55
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->u:Lcom/google/android/exoplayer2/source/rtsp/c;

    .line 56
    iget v3, v3, Lcom/google/android/exoplayer2/source/rtsp/c;->a:I

    if-ne v3, v13, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 57
    :cond_7
    :goto_2
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 58
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->b()V

    .line 60
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 61
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->x:Z

    goto/16 :goto_e

    :cond_8
    const-string v0, "Missing WWW-Authenticate header in a 401 response."

    .line 62
    invoke-static {v0, v3}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 63
    :cond_9
    :goto_3
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-static {v10}, Lcom/google/android/exoplayer2/source/rtsp/h;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/d;->x(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :cond_a
    packed-switch v10, :pswitch_data_1

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    goto/16 :goto_9

    :pswitch_1
    const-string v0, "Session"

    .line 67
    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Transport"

    .line 68
    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_e

    if-eqz v0, :cond_e

    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/h;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ln3/i1; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_b

    .line 74
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ln3/i1; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 75
    :try_start_2
    invoke-static {v5, v2}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 76
    :cond_b
    :goto_4
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 77
    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    if-eq v0, v4, :cond_c

    move v7, v2

    .line 78
    :cond_c
    invoke-static {v7}, Lm5/a;->e(Z)V

    .line 79
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 80
    iput v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    .line 81
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/d;->f0()V

    goto/16 :goto_e

    .line 83
    :cond_d
    invoke-static {v5, v3}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_e
    const-string v0, "Missing mandatory session or transport header"

    .line 84
    invoke-static {v0, v3}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :pswitch_2
    const-string v0, "Range"

    .line 85
    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 86
    sget-object v0, Lw4/l;->c:Lw4/l;

    goto :goto_5

    .line 87
    :cond_f
    invoke-static {v0}, Lw4/l;->a(Ljava/lang/String;)Lw4/l;

    move-result-object v0
    :try_end_2
    .catch Ln3/i1; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    :try_start_3
    const-string v2, "RTP-Info"

    .line 88
    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 89
    sget-object v2, Lu6/v;->i:Lu6/v$b;

    .line 90
    sget-object v2, Lu6/p0;->l:Lu6/p0;

    goto :goto_6

    .line 91
    :cond_10
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 92
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    .line 93
    invoke-static {v2, v3}, Lw4/m;->a(Ljava/lang/String;Landroid/net/Uri;)Lu6/v;

    move-result-object v2
    :try_end_3
    .catch Ln3/i1; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 94
    :catch_1
    :try_start_4
    sget-object v2, Lu6/v;->i:Lu6/v$b;

    .line 95
    sget-object v2, Lu6/p0;->l:Lu6/p0;

    .line 96
    :goto_6
    new-instance v3, Lw4/j;

    invoke-direct {v3, v0, v2}, Lw4/j;-><init>(Lw4/l;Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b(Lw4/j;)V

    goto/16 :goto_e

    .line 97
    :pswitch_3
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 98
    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    if-ne v0, v13, :cond_11

    move v0, v2

    goto :goto_7

    :cond_11
    move v0, v7

    .line 99
    :goto_7
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 100
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 101
    iput v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    .line 102
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Z

    .line 103
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_1b

    .line 104
    invoke-static {v2, v3}, Lm5/g0;->X(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/d;->i0(J)V

    goto/16 :goto_e

    :pswitch_4
    const-string v0, "Public"

    .line 105
    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/h;->e(Ljava/lang/String;)Lu6/v;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object v0

    .line 107
    iget-object v4, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 108
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Lcom/google/android/exoplayer2/source/rtsp/d$a;

    if-eqz v4, :cond_12

    goto/16 :goto_e

    .line 109
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lu6/v;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_8

    :cond_13
    move v2, v7

    :cond_14
    :goto_8
    if-eqz v2, :cond_15

    .line 110
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 111
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    .line 112
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    .line 113
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 114
    sget-object v4, Lu6/q0;->n:Lu6/q0;

    .line 115
    invoke-virtual {v2, v13, v0, v4, v3}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lw4/k;

    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c(Lw4/k;)V

    goto/16 :goto_e

    .line 117
    :cond_15
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 118
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    .line 119
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    const-string v2, "DESCRIBE not supported."

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/f$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 120
    :pswitch_5
    new-instance v2, Lq/e;

    .line 121
    invoke-static {v0}, Lw4/o;->a(Ljava/lang/String;)Lw4/n;

    move-result-object v0

    invoke-direct {v2, v9, v0}, Lq/e;-><init>(ILw4/n;)V

    .line 122
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/rtsp/d$b;->a(Lq/e;)V

    goto/16 :goto_e

    :catch_2
    move-exception v0

    goto :goto_a

    .line 123
    :goto_9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_4
    .catch Ln3/i1; {:try_start_4 .. :try_end_4} :catch_2

    .line 124
    :goto_a
    iget-object v2, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    new-instance v3, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$c;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/d;->x(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 125
    :cond_16
    iget-object v3, v8, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 126
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->o:Lcom/google/android/exoplayer2/source/rtsp/d$c;

    .line 127
    sget-object v4, Lcom/google/android/exoplayer2/source/rtsp/h;->a:Ljava/util/regex/Pattern;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    invoke-static {v5}, Lm5/a;->a(Z)V

    .line 129
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/rtsp/h;->d(Ljava/lang/String;)I

    .line 132
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 135
    invoke-interface {v0, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_17

    move v5, v2

    goto :goto_b

    :cond_17
    move v5, v7

    .line 136
    :goto_b
    invoke-static {v5}, Lm5/a;->a(Z)V

    .line 137
    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 138
    new-instance v6, Lcom/google/android/exoplayer2/source/rtsp/e$a;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/source/rtsp/e$a;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/rtsp/e$a;->b(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/e$a;

    .line 139
    new-instance v5, Lcom/google/android/exoplayer2/source/rtsp/e;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/source/rtsp/e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/e$a;)V

    .line 140
    sget-object v6, Lcom/google/android/exoplayer2/source/rtsp/h;->h:Ljava/lang/String;

    .line 141
    new-instance v8, Lt6/e;

    invoke-direct {v8, v6}, Lt6/e;-><init>(Ljava/lang/String;)V

    add-int/2addr v4, v2

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lt6/e;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 143
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 146
    new-instance v4, Lcom/google/android/exoplayer2/source/rtsp/e$a;

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 147
    iget-object v6, v5, Lcom/google/android/exoplayer2/source/rtsp/d;->j:Ljava/lang/String;

    .line 148
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Ljava/lang/String;

    .line 149
    invoke-direct {v4, v6, v5, v0}, Lcom/google/android/exoplayer2/source/rtsp/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    new-instance v5, Lcom/google/android/exoplayer2/source/rtsp/e;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/source/rtsp/e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/e$a;)V

    .line 151
    sget-object v4, Lcom/google/android/exoplayer2/source/rtsp/h;->a:Ljava/util/regex/Pattern;

    .line 152
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/source/rtsp/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_c

    :cond_18
    move v4, v7

    :goto_c
    invoke-static {v4}, Lm5/a;->a(Z)V

    .line 153
    new-instance v4, Lu6/v$a;

    invoke-direct {v4}, Lu6/v$a;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "RTSP/1.0"

    aput-object v8, v6, v7

    const/16 v8, 0x195

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    const-string v8, "Method Not Allowed"

    aput-object v8, v6, v13

    const-string v8, "%s %s %s"

    .line 155
    invoke-static {v8, v6}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {v4, v6}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    .line 157
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lu6/w;

    .line 158
    invoke-virtual {v5}, Lu6/z;->f()Lu6/a0;

    move-result-object v6

    invoke-virtual {v6}, Lu6/t;->p()Lu6/y0;

    move-result-object v6

    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 159
    invoke-virtual {v5, v8}, Lu6/w;->g(Ljava/lang/Object;)Lu6/v;

    move-result-object v9

    move v10, v7

    .line 160
    :goto_d
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-ge v10, v11, :cond_19

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v8, v11, v7

    .line 161
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v2

    const-string v14, "%s: %s"

    invoke-static {v14, v11}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 162
    :cond_1a
    invoke-virtual {v4, v12}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    .line 163
    invoke-virtual {v4, v12}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;

    .line 164
    invoke-virtual {v4}, Lu6/v$a;->e()Lu6/v;

    move-result-object v4

    .line 165
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/source/rtsp/d;->Y(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/util/List;)V

    .line 166
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/rtsp/d$c;->c:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 167
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/d;->q:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 168
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/rtsp/g;->Y(Ljava/util/List;)V

    .line 169
    iget v4, v3, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a:I

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lcom/google/android/exoplayer2/source/rtsp/d$c;->a:I

    :cond_1b
    :goto_e
    :pswitch_6
    return-void

    .line 170
    :pswitch_7
    iget-object v0, v1, Ly0/v;->i:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/fragment/app/r0;->i(Ljava/lang/Object;)V

    .line 171
    throw v3

    .line 172
    :pswitch_8
    iget-object v0, v1, Ly0/v;->i:Ljava/lang/Object;

    check-cast v0, Ln3/o0;

    iget-object v2, v1, Ly0/v;->j:Ljava/lang/Object;

    check-cast v2, Ln3/p1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :try_start_5
    invoke-virtual {v0, v2}, Ln3/o0;->b(Ln3/p1;)V
    :try_end_5
    .catch Ln3/q; {:try_start_5 .. :try_end_5} :catch_3

    return-void

    :catch_3
    move-exception v0

    move-object v2, v0

    const-string v0, "ExoPlayerImplInternal"

    const-string v3, "Unexpected error delivering message on external thread."

    .line 174
    invoke-static {v0, v3, v2}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 176
    :pswitch_9
    iget-object v0, v1, Ly0/v;->i:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ln3/k0;

    iget-object v0, v1, Ly0/v;->j:Ljava/lang/Object;

    check-cast v0, Ln3/o0$d;

    .line 177
    iget v3, v8, Ln3/k0;->H:I

    iget v9, v0, Ln3/o0$d;->c:I

    sub-int/2addr v3, v9

    iput v3, v8, Ln3/k0;->H:I

    .line 178
    iget-boolean v9, v0, Ln3/o0$d;->d:Z

    if-eqz v9, :cond_1c

    .line 179
    iget v9, v0, Ln3/o0$d;->e:I

    iput v9, v8, Ln3/k0;->I:I

    .line 180
    iput-boolean v2, v8, Ln3/k0;->J:Z

    .line 181
    :cond_1c
    iget-boolean v9, v0, Ln3/o0$d;->f:Z

    if-eqz v9, :cond_1d

    .line 182
    iget v9, v0, Ln3/o0$d;->g:I

    iput v9, v8, Ln3/k0;->K:I

    :cond_1d
    if-nez v3, :cond_27

    .line 183
    iget-object v3, v0, Ln3/o0$d;->b:Ln3/l1;

    iget-object v3, v3, Ln3/l1;->a:Ln3/b2;

    .line 184
    iget-object v9, v8, Ln3/k0;->j0:Ln3/l1;

    iget-object v9, v9, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v9}, Ln3/b2;->s()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v3}, Ln3/b2;->s()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 185
    iput v4, v8, Ln3/k0;->k0:I

    const-wide/16 v9, 0x0

    .line 186
    iput-wide v9, v8, Ln3/k0;->l0:J

    .line 187
    :cond_1e
    invoke-virtual {v3}, Ln3/b2;->s()Z

    move-result v4

    if-nez v4, :cond_20

    .line 188
    move-object v4, v3

    check-cast v4, Ln3/q1;

    .line 189
    iget-object v4, v4, Ln3/q1;->q:[Ln3/b2;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 190
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v8, Ln3/k0;->o:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_1f

    move v9, v2

    goto :goto_f

    :cond_1f
    move v9, v7

    :goto_f
    invoke-static {v9}, Lm5/a;->e(Z)V

    move v9, v7

    .line 191
    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_20

    .line 192
    iget-object v10, v8, Ln3/k0;->o:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/k0$d;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ln3/b2;

    .line 193
    iput-object v11, v10, Ln3/k0$d;->b:Ln3/b2;

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 194
    :cond_20
    iget-boolean v4, v8, Ln3/k0;->J:Z

    if-eqz v4, :cond_26

    .line 195
    iget-object v4, v0, Ln3/o0$d;->b:Ln3/l1;

    iget-object v4, v4, Ln3/l1;->b:Lp4/x$b;

    iget-object v9, v8, Ln3/k0;->j0:Ln3/l1;

    iget-object v9, v9, Ln3/l1;->b:Lp4/x$b;

    .line 196
    invoke-virtual {v4, v9}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, v0, Ln3/o0$d;->b:Ln3/l1;

    iget-wide v9, v4, Ln3/l1;->d:J

    iget-object v4, v8, Ln3/k0;->j0:Ln3/l1;

    iget-wide v11, v4, Ln3/l1;->r:J

    cmp-long v4, v9, v11

    if-eqz v4, :cond_21

    goto :goto_11

    :cond_21
    move v2, v7

    :cond_22
    :goto_11
    if-eqz v2, :cond_25

    .line 197
    invoke-virtual {v3}, Ln3/b2;->s()Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, v0, Ln3/o0$d;->b:Ln3/l1;

    iget-object v4, v4, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v4}, Lp4/w;->a()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_12

    .line 198
    :cond_23
    iget-object v4, v0, Ln3/o0$d;->b:Ln3/l1;

    iget-object v5, v4, Ln3/l1;->b:Lp4/x$b;

    iget-wide v9, v4, Ln3/l1;->d:J

    invoke-virtual {v8, v3, v5, v9, v10}, Ln3/k0;->s0(Ln3/b2;Lp4/x$b;J)J

    move-result-wide v3

    goto :goto_13

    .line 199
    :cond_24
    :goto_12
    iget-object v3, v0, Ln3/o0$d;->b:Ln3/l1;

    iget-wide v3, v3, Ln3/l1;->d:J

    :goto_13
    move-wide v5, v3

    :cond_25
    move v13, v2

    move-wide v15, v5

    goto :goto_14

    :cond_26
    move-wide v15, v5

    move v13, v7

    .line 200
    :goto_14
    iput-boolean v7, v8, Ln3/k0;->J:Z

    .line 201
    iget-object v9, v0, Ln3/o0$d;->b:Ln3/l1;

    const/4 v10, 0x1

    iget v11, v8, Ln3/k0;->K:I

    const/4 v12, 0x0

    iget v14, v8, Ln3/k0;->I:I

    const/16 v17, -0x1

    invoke-virtual/range {v8 .. v17}, Ln3/k0;->F0(Ln3/l1;IIZZIJI)V

    :cond_27
    return-void

    .line 202
    :pswitch_a
    iget-object v0, v1, Ly0/v;->i:Ljava/lang/Object;

    check-cast v0, Ly0/w;

    .line 203
    iget-object v0, v0, Ly0/w;->h:Ly0/d0$d;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 204
    :goto_15
    iget-object v0, v1, Ly0/v;->i:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Ly0/v;->j:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/nike/adapt/ui/lighting/LightingActivity;->T:I

    const-string v3, "$this_apply"

    .line 205
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$subtitle"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
