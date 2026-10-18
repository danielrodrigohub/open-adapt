.class public final enum Lv7/g;
.super Ljava/lang/Enum;
.source "OnBoarding.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv7/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lv7/g;

.field public static final enum i:Lv7/g;

.field public static final enum j:Lv7/g;

.field public static final enum k:Lv7/g;

.field public static final enum l:Lv7/g;

.field public static final enum m:Lv7/g;

.field public static final enum n:Lv7/g;

.field public static final enum o:Lv7/g;

.field public static final enum p:Lv7/g;

.field public static final enum q:Lv7/g;

.field public static final enum r:Lv7/g;

.field public static final enum s:Lv7/g;

.field public static final synthetic t:[Lv7/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lv7/g;

    const-string v1, "MY_SHOES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv7/g;->h:Lv7/g;

    .line 2
    new-instance v1, Lv7/g;

    const-string v3, "NOT_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv7/g;->i:Lv7/g;

    .line 3
    new-instance v3, Lv7/g;

    const-string v5, "FETCH_PROFILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv7/g;->j:Lv7/g;

    .line 4
    new-instance v5, Lv7/g;

    const-string v7, "WELCOME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lv7/g;->k:Lv7/g;

    .line 5
    new-instance v7, Lv7/g;

    const-string v9, "PAIR_FIRST_SHOE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lv7/g;->l:Lv7/g;

    .line 6
    new-instance v9, Lv7/g;

    const-string v11, "CONNECTED_FIRST_SHOE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lv7/g;->m:Lv7/g;

    .line 7
    new-instance v11, Lv7/g;

    const-string v13, "PAIR_SECOND_SHOE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lv7/g;->n:Lv7/g;

    .line 8
    new-instance v13, Lv7/g;

    const-string v15, "CONNECTED_SECOND_SHOE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lv7/g;->o:Lv7/g;

    .line 9
    new-instance v15, Lv7/g;

    const-string v14, "PUT_SHOES_ON"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lv7/g;->p:Lv7/g;

    .line 10
    new-instance v14, Lv7/g;

    const-string v12, "ADAPT_SHOE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lv7/g;->q:Lv7/g;

    .line 11
    new-instance v12, Lv7/g;

    const-string v10, "INSERT_ORTHOTICS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lv7/g;->r:Lv7/g;

    .line 12
    new-instance v10, Lv7/g;

    const-string v8, "COMPLETED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lv7/g;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lv7/g;->s:Lv7/g;

    const/16 v8, 0xc

    new-array v8, v8, [Lv7/g;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lv7/g;->t:[Lv7/g;

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

.method public static valueOf(Ljava/lang/String;)Lv7/g;
    .locals 1

    const-class v0, Lv7/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv7/g;

    return-object p0
.end method

.method public static values()[Lv7/g;
    .locals 1

    sget-object v0, Lv7/g;->t:[Lv7/g;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv7/g;

    return-object v0
.end method
