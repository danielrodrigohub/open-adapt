.class public final enum Lv7/h;
.super Ljava/lang/Enum;
.source "OnBoarding.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv7/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lv7/h;

.field public static final enum j:Lv7/h;

.field public static final enum k:Lv7/h;

.field public static final enum l:Lv7/h;

.field public static final enum m:Lv7/h;

.field public static final enum n:Lv7/h;

.field public static final enum o:Lv7/h;

.field public static final enum p:Lv7/h;

.field public static final synthetic q:[Lv7/h;


# instance fields
.field public final h:Lv7/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lv7/h;

    new-instance v1, Lv7/f;

    invoke-direct {v1}, Lv7/f;-><init>()V

    const-string v2, "NORMAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v0, Lv7/h;->i:Lv7/h;

    .line 2
    new-instance v1, Lv7/h;

    new-instance v2, Lv7/e;

    invoke-direct {v2}, Lv7/e;-><init>()V

    const-string v4, "NORMAL_WITH_ORTHOTICS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v1, Lv7/h;->j:Lv7/h;

    .line 3
    new-instance v2, Lv7/h;

    new-instance v4, Lv7/a;

    invoke-direct {v4}, Lv7/a;-><init>()V

    const-string v6, "SETTINGS_ADD_PAIR"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v2, Lv7/h;->k:Lv7/h;

    .line 4
    new-instance v4, Lv7/h;

    new-instance v6, Lv7/e;

    invoke-direct {v6}, Lv7/e;-><init>()V

    const-string v8, "ADD_PAIR_WITH_ORTHOTICS"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v4, Lv7/h;->l:Lv7/h;

    .line 5
    new-instance v6, Lv7/h;

    new-instance v8, Lv7/l;

    invoke-direct {v8}, Lv7/l;-><init>()V

    const-string v10, "SETTINGS_CALIBRATE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v6, Lv7/h;->m:Lv7/h;

    .line 6
    new-instance v8, Lv7/h;

    new-instance v10, Lv7/e;

    invoke-direct {v10}, Lv7/e;-><init>()V

    const-string v12, "SETTINGS_CALIBRATE_WITH_ORTHOTICS"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v8, Lv7/h;->n:Lv7/h;

    .line 7
    new-instance v10, Lv7/h;

    new-instance v12, Lv7/l;

    invoke-direct {v12}, Lv7/l;-><init>()V

    const-string v14, "MODES_CALIBRATE"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v10, Lv7/h;->o:Lv7/h;

    .line 8
    new-instance v12, Lv7/h;

    new-instance v14, Lv7/e;

    invoke-direct {v14}, Lv7/e;-><init>()V

    const-string v15, "MODES_CALIBRATE_WITH_ORTHOTICS"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lv7/h;-><init>(Ljava/lang/String;ILv7/j;)V

    sput-object v12, Lv7/h;->p:Lv7/h;

    const/16 v14, 0x8

    new-array v14, v14, [Lv7/h;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lv7/h;->q:[Lv7/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILv7/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lv7/h;->h:Lv7/j;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv7/h;
    .locals 1

    const-class v0, Lv7/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv7/h;

    return-object p0
.end method

.method public static values()[Lv7/h;
    .locals 1

    sget-object v0, Lv7/h;->q:[Lv7/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv7/h;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lv7/h;->m:Lv7/h;

    if-eq p0, v0, :cond_1

    sget-object v0, Lv7/h;->n:Lv7/h;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
