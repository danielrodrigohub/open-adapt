.class public final enum Lv9/e;
.super Ljava/lang/Enum;
.source "AdaptKitConnection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv9/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lv9/e;

.field public static final enum j:Lv9/e;

.field public static final enum k:Lv9/e;

.field public static final enum l:Lv9/e;

.field public static final enum m:Lv9/e;

.field public static final enum n:Lv9/e;

.field public static final enum o:Lv9/e;

.field public static final enum p:Lv9/e;

.field public static final enum q:Lv9/e;

.field public static final enum r:Lv9/e;

.field public static final synthetic s:[Lv9/e;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lv9/e;

    const-string v1, "NOT_INITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lv9/e;->i:Lv9/e;

    .line 2
    new-instance v1, Lv9/e;

    const-string v3, "NOT_CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lv9/e;->j:Lv9/e;

    .line 3
    new-instance v3, Lv9/e;

    const-string v5, "CONNECTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lv9/e;->k:Lv9/e;

    .line 4
    new-instance v5, Lv9/e;

    const-string v7, "CONNECTED_AND_AUTHENTICATION_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lv9/e;->l:Lv9/e;

    .line 5
    new-instance v7, Lv9/e;

    const-string v9, "USER_INTERVENTION_REQUIRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lv9/e;->m:Lv9/e;

    .line 6
    new-instance v9, Lv9/e;

    const-string v11, "CONNECTED_AND_REQUIRES_AUTHENTICATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lv9/e;->n:Lv9/e;

    .line 7
    new-instance v11, Lv9/e;

    const-string v13, "CONNECTED_AND_AUTHENTICATED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lv9/e;->o:Lv9/e;

    .line 8
    new-instance v13, Lv9/e;

    const-string v15, "CONNECTED_AND_AUTHENTICATED_THROUGH_OTHER_ADAPTKIT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lv9/e;->p:Lv9/e;

    .line 9
    new-instance v15, Lv9/e;

    const-string v14, "BOND_DIALOG_PRESENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lv9/e;->q:Lv9/e;

    .line 10
    new-instance v14, Lv9/e;

    const-string v12, "BONDING_DID_NOT_COMPLETE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lv9/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lv9/e;->r:Lv9/e;

    const/16 v12, 0xa

    new-array v12, v12, [Lv9/e;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lv9/e;->s:[Lv9/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lv9/e;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv9/e;
    .locals 1

    const-class v0, Lv9/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv9/e;

    return-object p0
.end method

.method public static values()[Lv9/e;
    .locals 1

    sget-object v0, Lv9/e;->s:[Lv9/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv9/e;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lv9/e;

    sget-object v1, Lv9/e;->o:Lv9/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lv9/e;->p:Lv9/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
