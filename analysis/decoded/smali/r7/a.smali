.class public final enum Lr7/a;
.super Ljava/lang/Enum;
.source "AdaptDeepLink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr7/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Lr7/a$a;

.field public static final enum k:Lr7/a;

.field public static final enum l:Lr7/a;

.field public static final enum m:Lr7/a;

.field public static final enum n:Lr7/a;

.field public static final enum o:Lr7/a;

.field public static final enum p:Lr7/a;

.field public static final enum q:Lr7/a;

.field public static final synthetic r:[Lr7/a;


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Lr7/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lr7/a;

    new-instance v1, Lr7/l;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lr7/l;-><init>(II)V

    const-string v4, "LACING"

    const-string v5, "/lacing"

    invoke-direct {v0, v4, v2, v5, v1}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 2
    new-instance v1, Lr7/a;

    new-instance v4, Lr7/l;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lr7/l;-><init>(II)V

    const-string v7, "UNLACING"

    const-string v8, "/lacing/unlace"

    invoke-direct {v1, v7, v5, v8, v4}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    sput-object v1, Lr7/a;->k:Lr7/a;

    .line 3
    new-instance v4, Lr7/a;

    new-instance v7, Lr7/l;

    invoke-direct {v7, v6, v6}, Lr7/l;-><init>(II)V

    const-string v8, "CHANGE_LIGHTS"

    const-string v9, "/lacing/change-lights"

    invoke-direct {v4, v8, v6, v9, v7}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    sput-object v4, Lr7/a;->l:Lr7/a;

    .line 4
    new-instance v7, Lr7/a;

    new-instance v8, Lr7/l;

    invoke-direct {v8, v3, v6}, Lr7/l;-><init>(II)V

    const-string v9, "LOOSEN"

    const-string v10, "/lacing/loosen"

    invoke-direct {v7, v9, v3, v10, v8}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    sput-object v7, Lr7/a;->m:Lr7/a;

    .line 5
    new-instance v8, Lr7/a;

    new-instance v9, Lr7/l;

    const/4 v10, 0x4

    invoke-direct {v9, v10, v6}, Lr7/l;-><init>(II)V

    const-string v11, "TIGHTEN"

    const-string v12, "/lacing/tighten"

    invoke-direct {v8, v11, v10, v12, v9}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    sput-object v8, Lr7/a;->n:Lr7/a;

    .line 6
    new-instance v9, Lr7/a;

    new-instance v11, Lr7/l;

    const/4 v12, 0x5

    invoke-direct {v11, v12, v6}, Lr7/l;-><init>(II)V

    const-string v13, "LACETO"

    const-string v14, "/lacing/laceTo"

    invoke-direct {v9, v13, v12, v14, v11}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    sput-object v9, Lr7/a;->o:Lr7/a;

    .line 7
    new-instance v11, Lr7/a;

    new-instance v13, Lr7/t;

    invoke-direct {v13}, Lr7/t;-><init>()V

    const-string v14, "PAIRING"

    const/4 v15, 0x6

    const-string v12, "/pairing"

    invoke-direct {v11, v14, v15, v12, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    sput-object v11, Lr7/a;->p:Lr7/a;

    .line 8
    new-instance v12, Lr7/a;

    new-instance v13, Lr7/v;

    invoke-direct {v13}, Lr7/v;-><init>()V

    const-string v14, "SETTINGS"

    const/4 v15, 0x7

    const-string v10, "/settings"

    invoke-direct {v12, v14, v15, v10, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 9
    new-instance v10, Lr7/a;

    new-instance v13, Lr7/r;

    invoke-direct {v13}, Lr7/r;-><init>()V

    const-string v14, "MYSHOES"

    const/16 v15, 0x8

    const-string v3, "/my-shoes"

    invoke-direct {v10, v14, v15, v3, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 10
    new-instance v3, Lr7/a;

    new-instance v13, Lr7/j;

    invoke-direct {v13}, Lr7/j;-><init>()V

    const-string v14, "SOFTWARE_UPDATE"

    const/16 v15, 0x9

    const-string v6, "/software-update"

    invoke-direct {v3, v14, v15, v6, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 11
    new-instance v6, Lr7/a;

    new-instance v13, Lr7/x;

    invoke-direct {v13}, Lr7/x;-><init>()V

    const-string v14, "SUPPORT"

    const/16 v15, 0xa

    const-string v5, "/support"

    invoke-direct {v6, v14, v15, v5, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 12
    new-instance v5, Lr7/a;

    new-instance v13, Lr7/p;

    invoke-direct {v13}, Lr7/p;-><init>()V

    const-string v14, "MODES"

    const/16 v15, 0xb

    const-string v2, "/modes"

    invoke-direct {v5, v14, v15, v2, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 13
    new-instance v2, Lr7/a;

    new-instance v13, Lr7/n;

    invoke-direct {v13}, Lr7/n;-><init>()V

    const-string v14, "LIGHTING"

    const/16 v15, 0xc

    move-object/from16 v16, v5

    const-string v5, "/lighting"

    invoke-direct {v2, v14, v15, v5, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 14
    new-instance v5, Lr7/a;

    new-instance v13, Lr7/c;

    invoke-direct {v13}, Lr7/c;-><init>()V

    const-string v14, "BATTERY"

    const/16 v15, 0xd

    move-object/from16 v17, v2

    const-string v2, "/battery"

    invoke-direct {v5, v14, v15, v2, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 15
    new-instance v2, Lr7/a;

    new-instance v13, Lr7/e;

    invoke-direct {v13}, Lr7/e;-><init>()V

    const-string v14, "CALIBRATE_FIT"

    const/16 v15, 0xe

    move-object/from16 v18, v5

    const-string v5, "/calibrate-fit"

    invoke-direct {v2, v14, v15, v5, v13}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    .line 16
    new-instance v5, Lr7/a;

    const-string v13, "UNKNOWN"

    const/16 v14, 0xf

    const-string v15, ""

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-direct {v5, v13, v14, v15, v2}, Lr7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V

    sput-object v5, Lr7/a;->q:Lr7/a;

    const/16 v2, 0x10

    new-array v2, v2, [Lr7/a;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v7, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v3, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    aput-object v5, v2, v14

    sput-object v2, Lr7/a;->r:[Lr7/a;

    new-instance v0, Lr7/a$a;

    invoke-direct {v0}, Lr7/a$a;-><init>()V

    sput-object v0, Lr7/a;->j:Lr7/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lr7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr7/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lr7/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lr7/a;->i:Lr7/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr7/a;
    .locals 1

    const-class v0, Lr7/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr7/a;

    return-object p0
.end method

.method public static values()[Lr7/a;
    .locals 1

    sget-object v0, Lr7/a;->r:[Lr7/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr7/a;

    return-object v0
.end method
