.class public final enum Ls9/r;
.super Ljava/lang/Enum;
.source "ShoeSelectionUtil.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls9/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Ls9/r;

.field public static final enum i:Ls9/r;

.field public static final enum j:Ls9/r;

.field public static final enum k:Ls9/r;

.field public static final enum l:Ls9/r;

.field public static final enum m:Ls9/r;

.field public static final synthetic n:[Ls9/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ls9/r;

    const-string v1, "ADAPT_BB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls9/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls9/r;->h:Ls9/r;

    .line 2
    new-instance v1, Ls9/r;

    const-string v3, "ADAPT_BB2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls9/r;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls9/r;->i:Ls9/r;

    .line 3
    new-instance v3, Ls9/r;

    const-string v5, "ADAPT_NSW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls9/r;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls9/r;->j:Ls9/r;

    .line 4
    new-instance v5, Ls9/r;

    const-string v7, "ADAPT_AUTOMAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls9/r;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls9/r;->k:Ls9/r;

    .line 5
    new-instance v7, Ls9/r;

    const-string v9, "JORDAN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls9/r;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ls9/r;->l:Ls9/r;

    .line 6
    new-instance v9, Ls9/r;

    const-string v11, "JORDAN_2"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls9/r;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ls9/r;->m:Ls9/r;

    const/4 v11, 0x6

    new-array v11, v11, [Ls9/r;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ls9/r;->n:[Ls9/r;

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

.method public static valueOf(Ljava/lang/String;)Ls9/r;
    .locals 1

    const-class v0, Ls9/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls9/r;

    return-object p0
.end method

.method public static values()[Ls9/r;
    .locals 1

    sget-object v0, Ls9/r;->n:[Ls9/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls9/r;

    return-object v0
.end method
