.class public final enum Lda/d;
.super Ljava/lang/Enum;
.source "AdaptKitConnectionState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lda/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lda/d;

.field public static final enum i:Lda/d;

.field public static final enum j:Lda/d;

.field public static final enum k:Lda/d;

.field public static final enum l:Lda/d;

.field public static final enum m:Lda/d;

.field public static final enum n:Lda/d;

.field public static final enum o:Lda/d;

.field public static final enum p:Lda/d;

.field public static final enum q:Lda/d;

.field public static final enum r:Lda/d;

.field public static final enum s:Lda/d;

.field public static final enum t:Lda/d;

.field public static final enum u:Lda/d;

.field public static final synthetic v:[Lda/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lda/d;

    const-string v1, "NOT_INITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lda/d;->h:Lda/d;

    .line 2
    new-instance v1, Lda/d;

    const-string v3, "CONNECTION_STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lda/d;->i:Lda/d;

    .line 3
    new-instance v3, Lda/d;

    const-string v5, "CONNECTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lda/d;->j:Lda/d;

    .line 4
    new-instance v5, Lda/d;

    const-string v7, "CONNECTED_AND_STARTING_AUTHENTICATION_FLOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lda/d;->k:Lda/d;

    .line 5
    new-instance v7, Lda/d;

    const-string v9, "CONNECTED_AND_AUTHENTICATION_FAILURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lda/d;->l:Lda/d;

    .line 6
    new-instance v9, Lda/d;

    const-string v11, "CONNECTED_AND_REQUIRES_AUTHENTICATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lda/d;->m:Lda/d;

    .line 7
    new-instance v11, Lda/d;

    const-string v13, "CONNECTED_AND_GETTING_INFORMATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lda/d;->n:Lda/d;

    .line 8
    new-instance v13, Lda/d;

    const-string v15, "CONNECTED_AND_AUTHENTICATED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lda/d;->o:Lda/d;

    .line 9
    new-instance v15, Lda/d;

    const-string v14, "CONNECTED_AND_AUTHENTICATED_REMOTELY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lda/d;->p:Lda/d;

    .line 10
    new-instance v14, Lda/d;

    const-string v12, "BONDING_REQUIRED_BY_USER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lda/d;->q:Lda/d;

    .line 11
    new-instance v12, Lda/d;

    const-string v10, "BONDING_FAILED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lda/d;->r:Lda/d;

    .line 12
    new-instance v10, Lda/d;

    const-string v8, "DISCONNECTED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lda/d;->s:Lda/d;

    .line 13
    new-instance v8, Lda/d;

    const-string v6, "CLOSED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lda/d;-><init>(Ljava/lang/String;I)V

    .line 14
    new-instance v6, Lda/d;

    const-string v4, "FORCED_CLOSE_BY_CORE_RF"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lda/d;-><init>(Ljava/lang/String;I)V

    .line 15
    new-instance v4, Lda/d;

    const-string v2, "USER_INTERVENTION_REQUIRED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lda/d;->t:Lda/d;

    .line 16
    new-instance v2, Lda/d;

    const-string v6, "USER_INTERVENTION_REQUIRED_BLE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lda/d;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lda/d;->u:Lda/d;

    const/16 v6, 0x10

    new-array v6, v6, [Lda/d;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lda/d;->v:[Lda/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lda/d;
    .locals 1

    const-class v0, Lda/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lda/d;

    return-object p0
.end method

.method public static values()[Lda/d;
    .locals 1

    sget-object v0, Lda/d;->v:[Lda/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lda/d;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lda/d;

    sget-object v1, Lda/d;->o:Lda/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lda/d;->p:Lda/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lda/d;

    sget-object v1, Lda/d;->h:Lda/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lda/d;->s:Lda/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
