.class public final synthetic Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb1/b$b;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/d0;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/d0;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 11

    iget-object v0, p0, Landroidx/lifecycle/c0;->a:Landroidx/lifecycle/d0;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Landroidx/lifecycle/d0;->b:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lgd/z;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/b$b;

    .line 4
    invoke-interface {v2}, Lb1/b$b;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "key"

    .line 5
    invoke-static {v6, v7}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    sget-object v7, Landroidx/lifecycle/d0;->f:[Ljava/lang/Class;

    const/16 v8, 0x1d

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 7
    invoke-static {v10}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v4, :cond_6

    .line 8
    iget-object v4, v0, Landroidx/lifecycle/d0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/lifecycle/v;

    if-eqz v5, :cond_3

    move-object v3, v4

    check-cast v3, Landroidx/lifecycle/v;

    :cond_3
    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3, v2}, Landroidx/lifecycle/v;->h(Ljava/lang/Object;)V

    goto :goto_4

    .line 10
    :cond_4
    iget-object v3, v0, Landroidx/lifecycle/d0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_4
    iget-object v3, v0, Landroidx/lifecycle/d0;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t put value with type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into saved state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_7
    iget-object v1, v0, Landroidx/lifecycle/d0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v8, v0, Landroidx/lifecycle/d0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const/4 v0, 0x2

    new-array v1, v0, [Lfd/e;

    .line 21
    new-instance v7, Lfd/e;

    const-string v8, "keys"

    invoke-direct {v7, v8, v2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v1, v4

    new-instance v2, Lfd/e;

    const-string v7, "values"

    invoke-direct {v2, v7, v6}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    .line 22
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    :goto_6
    if-ge v4, v0, :cond_26

    .line 23
    aget-object v5, v1, v4

    .line 24
    iget-object v6, v5, Lfd/e;->h:Ljava/lang/Object;

    .line 25
    check-cast v6, Ljava/lang/String;

    .line 26
    iget-object v5, v5, Lfd/e;->i:Ljava/lang/Object;

    if-nez v5, :cond_9

    .line 27
    invoke-virtual {v2, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 28
    :cond_9
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_a

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 29
    :cond_a
    instance-of v7, v5, Ljava/lang/Byte;

    if-eqz v7, :cond_b

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_7

    .line 30
    :cond_b
    instance-of v7, v5, Ljava/lang/Character;

    if-eqz v7, :cond_c

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_7

    .line 31
    :cond_c
    instance-of v7, v5, Ljava/lang/Double;

    if-eqz v7, :cond_d

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_7

    .line 32
    :cond_d
    instance-of v7, v5, Ljava/lang/Float;

    if-eqz v7, :cond_e

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_7

    .line 33
    :cond_e
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_f

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 34
    :cond_f
    instance-of v7, v5, Ljava/lang/Long;

    if-eqz v7, :cond_10

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 35
    :cond_10
    instance-of v7, v5, Ljava/lang/Short;

    if-eqz v7, :cond_11

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_7

    .line 36
    :cond_11
    instance-of v7, v5, Landroid/os/Bundle;

    if-eqz v7, :cond_12

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_7

    .line 37
    :cond_12
    instance-of v7, v5, Ljava/lang/CharSequence;

    if-eqz v7, :cond_13

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 38
    :cond_13
    instance-of v7, v5, Landroid/os/Parcelable;

    if-eqz v7, :cond_14

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_7

    .line 39
    :cond_14
    instance-of v7, v5, [Z

    if-eqz v7, :cond_15

    check-cast v5, [Z

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_7

    .line 40
    :cond_15
    instance-of v7, v5, [B

    if-eqz v7, :cond_16

    check-cast v5, [B

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_7

    .line 41
    :cond_16
    instance-of v7, v5, [C

    if-eqz v7, :cond_17

    check-cast v5, [C

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_7

    .line 42
    :cond_17
    instance-of v7, v5, [D

    if-eqz v7, :cond_18

    check-cast v5, [D

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_7

    .line 43
    :cond_18
    instance-of v7, v5, [F

    if-eqz v7, :cond_19

    check-cast v5, [F

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_7

    .line 44
    :cond_19
    instance-of v7, v5, [I

    if-eqz v7, :cond_1a

    check-cast v5, [I

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_7

    .line 45
    :cond_1a
    instance-of v7, v5, [J

    if-eqz v7, :cond_1b

    check-cast v5, [J

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_7

    .line 46
    :cond_1b
    instance-of v7, v5, [S

    if-eqz v7, :cond_1c

    check-cast v5, [S

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_7

    .line 47
    :cond_1c
    instance-of v7, v5, [Ljava/lang/Object;

    const/16 v8, 0x22

    const-string v9, " for key \""

    if-eqz v7, :cond_21

    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 49
    const-class v10, Landroid/os/Parcelable;

    .line 50
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 51
    check-cast v5, [Landroid/os/Parcelable;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_7

    :cond_1d
    const-class v10, Ljava/lang/String;

    .line 52
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 53
    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    :cond_1e
    const-class v10, Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 55
    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_1f
    const-class v10, Ljava/io/Serializable;

    .line 56
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 57
    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_7

    .line 58
    :cond_20
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value array type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_21
    instance-of v7, v5, Ljava/io/Serializable;

    if-eqz v7, :cond_22

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_7

    .line 63
    :cond_22
    instance-of v7, v5, Landroid/os/IBinder;

    if-eqz v7, :cond_23

    .line 64
    check-cast v5, Landroid/os/IBinder;

    invoke-static {v2, v6, v5}, Lf0/b;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_7

    .line 65
    :cond_23
    instance-of v7, v5, Landroid/util/Size;

    if-eqz v7, :cond_24

    .line 66
    check-cast v5, Landroid/util/Size;

    invoke-static {v2, v6, v5}, Lf0/c;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V

    goto :goto_7

    .line 67
    :cond_24
    instance-of v7, v5, Landroid/util/SizeF;

    if-eqz v7, :cond_25

    .line 68
    check-cast v5, Landroid/util/SizeF;

    invoke-static {v2, v6, v5}, Lf0/c;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 69
    :cond_25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    return-object v2
.end method
