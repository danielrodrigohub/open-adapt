.class public final enum Lgc/p$b;
.super Ljava/lang/Enum;
.source "messages.java"

# interfaces
.implements Lm7/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgc/p$b;",
        ">;",
        "Lm7/y$a;"
    }
.end annotation


# static fields
.field public static final enum i:Lgc/p$b;

.field public static final enum j:Lgc/p$b;

.field public static final enum k:Lgc/p$b;

.field public static final enum l:Lgc/p$b;

.field public static final enum m:Lgc/p$b;

.field public static final enum n:Lgc/p$b;

.field public static final synthetic o:[Lgc/p$b;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lgc/p$b;

    const-string v1, "CUSTOM_ANIMATION_END_STATUS_NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgc/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgc/p$b;->i:Lgc/p$b;

    .line 2
    new-instance v1, Lgc/p$b;

    const-string v3, "CUSTOM_ANIMATION_END_STATUS_TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgc/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgc/p$b;->j:Lgc/p$b;

    .line 3
    new-instance v3, Lgc/p$b;

    const-string v5, "CUSTOM_ANIMATION_END_STATUS_CANCELED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgc/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgc/p$b;->k:Lgc/p$b;

    .line 4
    new-instance v5, Lgc/p$b;

    const-string v7, "CUSTOM_ANIMATION_END_STATUS_BATTERY_OVERTEMP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgc/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgc/p$b;->l:Lgc/p$b;

    .line 5
    new-instance v7, Lgc/p$b;

    const-string v9, "CUSTOM_ANIMATION_END_STATUS_CRITICAL_BATTERY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgc/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgc/p$b;->m:Lgc/p$b;

    .line 6
    new-instance v9, Lgc/p$b;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lgc/p$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgc/p$b;->n:Lgc/p$b;

    const/4 v11, 0x6

    new-array v11, v11, [Lgc/p$b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lgc/p$b;->o:[Lgc/p$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lgc/p$b;->h:I

    return-void
.end method

.method public static b(I)Lgc/p$b;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lgc/p$b;->m:Lgc/p$b;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lgc/p$b;->l:Lgc/p$b;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lgc/p$b;->k:Lgc/p$b;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lgc/p$b;->j:Lgc/p$b;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lgc/p$b;->i:Lgc/p$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgc/p$b;
    .locals 1

    const-class v0, Lgc/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgc/p$b;

    return-object p0
.end method

.method public static values()[Lgc/p$b;
    .locals 1

    sget-object v0, Lgc/p$b;->o:[Lgc/p$b;

    invoke-virtual {v0}, [Lgc/p$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgc/p$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lgc/p$b;->n:Lgc/p$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lgc/p$b;->h:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
