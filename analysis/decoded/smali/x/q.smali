.class public final Lx/q;
.super Ljava/lang/Object;
.source "NotificationCompatBuilder.java"

# interfaces
.implements Lx/l;


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Lx/o;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lx/o;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lx/q;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Lx/q;->d:Landroid/os/Bundle;

    .line 4
    iput-object v1, v0, Lx/q;->b:Lx/o;

    .line 5
    iget-object v2, v1, Lx/o;->a:Landroid/content/Context;

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 7
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lx/o;->a:Landroid/content/Context;

    iget-object v5, v1, Lx/o;->p:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lx/o;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    .line 9
    :goto_0
    iget-object v2, v1, Lx/o;->r:Landroid/app/Notification;

    .line 10
    iget-object v4, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    iget-wide v5, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->icon:I

    iget v6, v2, Landroid/app/Notification;->iconLevel:I

    .line 11
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 12
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->vibrate:[J

    .line 14
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->ledARGB:I

    iget v7, v2, Landroid/app/Notification;->ledOnMS:I

    iget v8, v2, Landroid/app/Notification;->ledOffMS:I

    .line 15
    invoke-virtual {v4, v5, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v7

    .line 16
    :goto_1
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v7

    .line 17
    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_3

    :cond_3
    move v5, v7

    .line 18
    :goto_3
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->defaults:I

    .line 19
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lx/o;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lx/o;->f:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v1, Lx/o;->g:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 24
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v8, v7

    .line 25
    :goto_4
    invoke-virtual {v4, v6, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 26
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 27
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lx/o;->k:I

    iget v8, v1, Lx/o;->l:I

    iget-boolean v9, v1, Lx/o;->m:Z

    .line 28
    invoke-virtual {v4, v5, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 29
    iget-object v4, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 30
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v1, Lx/o;->h:I

    .line 31
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 32
    iget-object v4, v1, Lx/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v8, "android.support.allowGeneratedReplies"

    const/16 v9, 0x1c

    const/16 v10, 0x1d

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx/m;

    .line 33
    invoke-virtual {v5}, Lx/m;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v11

    .line 34
    new-instance v12, Landroid/app/Notification$Action$Builder;

    if-eqz v11, :cond_5

    .line 35
    invoke-static {v11, v6}, Landroidx/core/graphics/drawable/IconCompat$a;->f(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v11

    goto :goto_6

    :cond_5
    move-object v11, v6

    .line 36
    :goto_6
    iget-object v13, v5, Lx/m;->j:Ljava/lang/CharSequence;

    .line 37
    iget-object v14, v5, Lx/m;->k:Landroid/app/PendingIntent;

    .line 38
    invoke-direct {v12, v11, v13, v14}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 39
    iget-object v11, v5, Lx/m;->c:[Lx/u;

    if-eqz v11, :cond_7

    .line 40
    array-length v13, v11

    new-array v14, v13, [Landroid/app/RemoteInput;

    .line 41
    array-length v15, v11

    if-gtz v15, :cond_6

    move v11, v7

    :goto_7
    if-ge v11, v13, :cond_7

    .line 42
    aget-object v15, v14, v11

    .line 43
    invoke-virtual {v12, v15}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 44
    :cond_6
    aget-object v1, v11, v7

    .line 45
    new-instance v1, Landroid/app/RemoteInput$Builder;

    .line 46
    throw v6

    .line 47
    :cond_7
    iget-object v11, v5, Lx/m;->a:Landroid/os/Bundle;

    if-eqz v11, :cond_8

    .line 48
    new-instance v11, Landroid/os/Bundle;

    .line 49
    iget-object v13, v5, Lx/m;->a:Landroid/os/Bundle;

    .line 50
    invoke-direct {v11, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_8

    .line 51
    :cond_8
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 52
    :goto_8
    iget-boolean v13, v5, Lx/m;->e:Z

    .line 53
    invoke-virtual {v11, v8, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    iget-boolean v13, v5, Lx/m;->e:Z

    .line 56
    invoke-virtual {v12, v13}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 57
    iget v13, v5, Lx/m;->g:I

    const-string v14, "android.support.action.semanticAction"

    .line 58
    invoke-virtual {v11, v14, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-lt v8, v9, :cond_9

    .line 59
    iget v9, v5, Lx/m;->g:I

    .line 60
    invoke-virtual {v12, v9}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_9
    if-lt v8, v10, :cond_a

    .line 61
    iget-boolean v9, v5, Lx/m;->h:Z

    .line 62
    invoke-virtual {v12, v9}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    :cond_a
    const/16 v9, 0x1f

    if-lt v8, v9, :cond_b

    .line 63
    iget-boolean v8, v5, Lx/m;->l:Z

    .line 64
    invoke-virtual {v12, v8}, Landroid/app/Notification$Action$Builder;->setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;

    .line 65
    :cond_b
    iget-boolean v5, v5, Lx/m;->f:Z

    const-string v8, "android.support.action.showsUserInterface"

    .line 66
    invoke-virtual {v11, v8, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-virtual {v12, v11}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 68
    iget-object v5, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v12}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 69
    :cond_c
    iget-object v4, v1, Lx/o;->o:Landroid/os/Bundle;

    if-eqz v4, :cond_d

    .line 70
    iget-object v5, v0, Lx/q;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    :cond_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    iget-object v5, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    iget-boolean v11, v1, Lx/o;->i:Z

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 73
    iget-object v5, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 74
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 76
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 77
    iget-object v5, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    iget-object v11, v1, Lx/o;->n:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 78
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 79
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 80
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v11, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 81
    invoke-virtual {v5, v11, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    if-ge v4, v9, :cond_e

    .line 82
    iget-object v2, v1, Lx/o;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Lx/q;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lx/o;->s:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lx/q;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_9

    .line 83
    :cond_e
    iget-object v2, v1, Lx/o;->s:Ljava/util/ArrayList;

    :goto_9
    if-eqz v2, :cond_f

    .line 84
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 85
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 86
    iget-object v5, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_a

    .line 87
    :cond_f
    iget-object v2, v1, Lx/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 88
    iget-object v2, v1, Lx/o;->o:Landroid/os/Bundle;

    if-nez v2, :cond_10

    .line 89
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lx/o;->o:Landroid/os/Bundle;

    .line 90
    :cond_10
    iget-object v2, v1, Lx/o;->o:Landroid/os/Bundle;

    const-string v4, "android.car.EXTENSIONS"

    .line 91
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_11

    .line 92
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 93
    :cond_11
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 94
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move v12, v7

    .line 95
    :goto_b
    iget-object v13, v1, Lx/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_14

    .line 96
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lx/o;->d:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lx/m;

    .line 98
    sget-object v15, Lx/r;->a:Ljava/lang/Object;

    .line 99
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 100
    invoke-virtual {v14}, Lx/m;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v16

    if-eqz v16, :cond_12

    .line 101
    invoke-virtual/range {v16 .. v16}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v16

    move/from16 v10, v16

    goto :goto_c

    :cond_12
    move v10, v7

    :goto_c
    const-string v9, "icon"

    invoke-virtual {v15, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    iget-object v9, v14, Lx/m;->j:Ljava/lang/CharSequence;

    const-string v10, "title"

    .line 103
    invoke-virtual {v15, v10, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 104
    iget-object v9, v14, Lx/m;->k:Landroid/app/PendingIntent;

    const-string v10, "actionIntent"

    .line 105
    invoke-virtual {v15, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    iget-object v9, v14, Lx/m;->a:Landroid/os/Bundle;

    if-eqz v9, :cond_13

    .line 107
    new-instance v9, Landroid/os/Bundle;

    .line 108
    iget-object v10, v14, Lx/m;->a:Landroid/os/Bundle;

    .line 109
    invoke-direct {v9, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    .line 110
    :cond_13
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 111
    :goto_d
    iget-boolean v10, v14, Lx/m;->e:Z

    .line 112
    invoke-virtual {v9, v8, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "extras"

    .line 113
    invoke-virtual {v15, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    iget-object v9, v14, Lx/m;->c:[Lx/u;

    .line 115
    invoke-static {v9}, Lx/r;->a([Lx/u;)[Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "remoteInputs"

    invoke-virtual {v15, v10, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 116
    iget-boolean v9, v14, Lx/m;->f:Z

    const-string v10, "showsUserInterface"

    .line 117
    invoke-virtual {v15, v10, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    iget v9, v14, Lx/m;->g:I

    const-string v10, "semanticAction"

    .line 119
    invoke-virtual {v15, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v11, v13, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v12, v12, 0x1

    const/16 v9, 0x1c

    const/16 v10, 0x1d

    goto :goto_b

    :cond_14
    const-string v8, "invisible_actions"

    .line 121
    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {v5, v8, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    iget-object v8, v1, Lx/o;->o:Landroid/os/Bundle;

    if-nez v8, :cond_15

    .line 124
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v1, Lx/o;->o:Landroid/os/Bundle;

    .line 125
    :cond_15
    iget-object v8, v1, Lx/o;->o:Landroid/os/Bundle;

    .line 126
    invoke-virtual {v8, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    iget-object v2, v0, Lx/q;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    :cond_16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    iget-object v4, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    iget-object v5, v1, Lx/o;->o:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 130
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-lt v2, v3, :cond_17

    .line 131
    iget-object v3, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 133
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 134
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 135
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 136
    iget-object v3, v1, Lx/o;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 137
    iget-object v3, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 139
    invoke-virtual {v3, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 140
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_17
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_18

    .line 141
    iget-object v2, v1, Lx/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx/t;

    .line 142
    iget-object v4, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v3}, Lx/t$a;->b(Lx/t;)Landroid/app/Person;

    move-result-object v3

    .line 144
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    goto :goto_e

    .line 145
    :cond_18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_19

    .line 146
    iget-object v2, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, v1, Lx/o;->q:Z

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 147
    iget-object v1, v0, Lx/q;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    :cond_19
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1
    :cond_1
    new-instance v0, Lp/c;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Lp/c;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Lp/c;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0, p1}, Lp/c;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx/t;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/t;

    .line 3
    iget-object v2, v1, Lx/t;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, v1, Lx/t;->a:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    const-string v2, "name:"

    .line 5
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    iget-object v1, v1, Lx/t;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 7
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
