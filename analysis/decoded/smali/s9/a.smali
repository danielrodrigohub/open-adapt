.class public final Ls9/a;
.super Ljava/lang/Object;
.source "AnimationQueueTracker.kt"


# instance fields
.field public final a:Lfd/d;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ls9/a$a;->h:Ls9/a$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    iput-object v0, p0, Ls9/a;->a:Lfd/d;

    return-void
.end method


# virtual methods
.method public final a()Lh8/a;
    .locals 1

    iget-object v0, p0, Ls9/a;->a:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ls9/a;->b:Z

    .line 2
    iput-boolean v0, p0, Ls9/a;->c:Z

    return-void
.end method

.method public final c(Lcom/nike/adapt/adk/Shoe;Lx8/s;Lcom/nike/adapt/adk/IDeviceController;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "shoe"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "effectsHelper"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v3, v0, Ls9/a;->b:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    iget-boolean v7, v0, Ls9/a;->c:Z

    if-nez v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v7, :cond_1

    return v6

    :cond_1
    const/4 v7, 0x0

    if-eqz v3, :cond_2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    iput-boolean v6, v0, Ls9/a;->b:Z

    .line 4
    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    goto :goto_1

    .line 5
    :cond_2
    iget-boolean v3, v0, Ls9/a;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    iput-boolean v6, v0, Ls9/a;->c:Z

    .line 7
    sget-object v3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    goto :goto_1

    :cond_3
    move-object v3, v7

    :goto_1
    if-nez v3, :cond_4

    return v6

    .line 8
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ls9/a;->a()Lh8/a;

    move-result-object v4

    invoke-interface {v4}, Lh8/a;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v4

    .line 9
    invoke-virtual/range {p0 .. p0}, Ls9/a;->a()Lh8/a;

    move-result-object v8

    invoke-interface {v8}, Lh8/a;->j()I

    move-result v8

    const/16 v9, 0x3c

    mul-int/2addr v8, v9

    .line 10
    sget-object v10, Ls9/g;->a:Ls9/g;

    invoke-virtual {v10}, Ls9/g;->b()I

    move-result v10

    invoke-static {v10}, Lq/g;->a(I)I

    move-result v10

    if-eqz v10, :cond_7

    if-eq v10, v5, :cond_5

    move v5, v6

    goto/16 :goto_3

    .line 11
    :cond_5
    invoke-virtual {v3}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    .line 12
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lx8/s;->b()Z

    move-result v6

    iput-boolean v6, v1, Lx8/s;->f:Z

    .line 13
    new-instance v10, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    const/4 v6, 0x2

    invoke-direct {v10, v4, v7, v6, v7}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 14
    invoke-virtual {v1, v8}, Lx8/s;->c(I)I

    move-result v16

    .line 15
    new-instance v1, Lcom/nike/adapt/adk/model/AdaptAnimation;

    const/16 v11, 0x1f4

    const/16 v12, 0x3e8

    const/16 v13, 0xabe

    const/16 v14, 0x3e8

    const/16 v15, 0x1f4

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/nike/adapt/adk/model/AdaptAnimation;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIII)V

    .line 16
    new-instance v4, Lp8/h0;

    invoke-direct {v4, v1}, Lp8/h0;-><init>(Lcom/nike/adapt/adk/model/AdaptAnimation;)V

    invoke-interface {v2, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 17
    sget-object v1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v1}, Lcom/nike/adapt/analytics/TrackManager;->pulsingLightsTurnedOn()V

    goto :goto_3

    .line 18
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ls9/a;->a()Lh8/a;

    move-result-object v10

    invoke-interface {v10}, Lh8/a;->j()I

    move-result v10

    if-gez v10, :cond_8

    .line 19
    invoke-virtual/range {p0 .. p0}, Ls9/a;->a()Lh8/a;

    move-result-object v10

    invoke-interface {v10, v9}, Lh8/a;->c0(I)V

    .line 20
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lx8/s;->b()Z

    move-result v9

    iput-boolean v9, v1, Lx8/s;->f:Z

    .line 21
    sget-object v9, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v9}, Lcom/nike/adapt/adk/InMemoryCache;->getPendingLightEffect()Lv7/c;

    move-result-object v9

    if-eqz v9, :cond_a

    const-string v10, "shoeColor"

    .line 22
    invoke-static {v4, v10}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v10, Ly8/i$a;

    .line 24
    invoke-direct {v10, v9, v6}, Ly8/i$a;-><init>(Lv7/c;Z)V

    .line 25
    sget-object v6, Ly8/b;->a:Ly8/b;

    sget-object v9, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v9}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v9

    invoke-virtual {v6, v10, v4}, Ly8/b;->d(Ly8/i$a;Lcom/nike/adapt/adk/model/AdaptShoeColor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v9, v4}, Ly8/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object v11

    .line 26
    iget-object v4, v10, Ly8/i$a;->a:Lv7/c;

    .line 27
    invoke-virtual {v4}, Lv7/c;->a()I

    move-result v12

    if-eqz v11, :cond_9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    const/16 v19, 0x0

    .line 28
    invoke-static/range {v11 .. v19}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->copy$default(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;IZLjava/util/List;ZIIILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object v7

    :cond_9
    if-eqz v7, :cond_a

    .line 29
    new-instance v4, Lp8/i0;

    invoke-virtual {v1, v8}, Lx8/s;->c(I)I

    move-result v1

    invoke-direct {v4, v7, v1}, Lp8/i0;-><init>(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;I)V

    invoke-interface {v2, v3, v4}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    :cond_a
    :goto_3
    return v5
.end method
