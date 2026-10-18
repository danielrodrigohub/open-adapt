.class public final synthetic Lj5/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt6/i;


# instance fields
.field public final synthetic h:Lj5/i;


# direct methods
.method public synthetic constructor <init>(Lj5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/h;->h:Lj5/i;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lj5/h;->h:Lj5/i;

    check-cast p1, Ln3/s0;

    .line 1
    iget-object v1, v0, Lj5/i;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, v0, Lj5/i;->f:Lj5/i$c;

    iget-boolean v2, v2, Lj5/i$c;->R:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lj5/i;->e:Z

    if-nez v2, :cond_6

    iget v2, p1, Ln3/s0;->F:I

    const/4 v5, 0x2

    if-le v2, v5, :cond_6

    .line 3
    iget-object v2, p1, Ln3/s0;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, -0x1

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v5, v6

    goto :goto_1

    :sswitch_0
    const-string v5, "audio/eac3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v7, "audio/ac4"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v5, "audio/ac3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :sswitch_3
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    :goto_2
    move v2, v3

    goto :goto_3

    :pswitch_0
    move v2, v4

    :goto_3
    const/16 v5, 0x20

    if-eqz v2, :cond_5

    .line 5
    :try_start_1
    sget v2, Lm5/g0;->a:I

    if-lt v2, v5, :cond_6

    iget-object v2, v0, Lj5/i;->g:Lj5/i$e;

    if-eqz v2, :cond_6

    .line 6
    iget-boolean v2, v2, Lj5/i$e;->b:Z

    if-eqz v2, :cond_6

    .line 7
    :cond_5
    sget v2, Lm5/g0;->a:I

    if-lt v2, v5, :cond_7

    iget-object v2, v0, Lj5/i;->g:Lj5/i$e;

    if-eqz v2, :cond_7

    .line 8
    iget-boolean v5, v2, Lj5/i$e;->b:Z

    if-eqz v5, :cond_7

    .line 9
    invoke-virtual {v2}, Lj5/i$e;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lj5/i;->g:Lj5/i$e;

    .line 10
    invoke-virtual {v2}, Lj5/i$e;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lj5/i;->g:Lj5/i$e;

    iget-object v0, v0, Lj5/i;->h:Lp3/d;

    .line 11
    invoke-virtual {v2, v0, p1}, Lj5/i$e;->a(Lp3/d;Ln3/s0;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
