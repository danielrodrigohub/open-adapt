.class public final enum Lcom/nike/adapt/adk/Shoe;
.super Ljava/lang/Enum;
.source "DeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/Shoe$Companion;,
        Lcom/nike/adapt/adk/Shoe$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/adk/Shoe;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nike/adapt/adk/Shoe;

.field public static final enum BOTH:Lcom/nike/adapt/adk/Shoe;

.field public static final Companion:Lcom/nike/adapt/adk/Shoe$Companion;

.field public static final enum LEFT:Lcom/nike/adapt/adk/Shoe;

.field public static final enum RIGHT:Lcom/nike/adapt/adk/Shoe;


# direct methods
.method private static final synthetic $values()[Lcom/nike/adapt/adk/Shoe;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nike/adapt/adk/Shoe;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/Shoe;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/Shoe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/Shoe;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/Shoe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/Shoe;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/adk/Shoe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    invoke-static {}, Lcom/nike/adapt/adk/Shoe;->$values()[Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sput-object v0, Lcom/nike/adapt/adk/Shoe;->$VALUES:[Lcom/nike/adapt/adk/Shoe;

    new-instance v0, Lcom/nike/adapt/adk/Shoe$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/Shoe$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/Shoe;->Companion:Lcom/nike/adapt/adk/Shoe$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/adk/Shoe;
    .locals 1

    const-class v0, Lcom/nike/adapt/adk/Shoe;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/adk/Shoe;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/adk/Shoe;
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->$VALUES:[Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/adk/Shoe;

    return-object v0
.end method


# virtual methods
.method public final isBoth()Z
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLeft()Z
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRight()Z
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final parse()Lw9/u1;
    .locals 2

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/Shoe$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lw9/u1;->l:Lw9/u1;

    goto :goto_0

    :cond_0
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    .line 3
    :cond_1
    sget-object v0, Lw9/u1;->k:Lw9/u1;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lw9/u1;->j:Lw9/u1;

    :goto_0
    return-object v0
.end method
