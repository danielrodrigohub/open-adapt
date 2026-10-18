.class public final enum Lb7/x$f;
.super Ljava/lang/Enum;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb7/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb7/x$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lb7/x$f;

.field public static final enum i:Lb7/x$f;

.field public static final enum j:Lb7/x$f;

.field public static final enum k:Lb7/x$f;

.field public static final enum l:Lb7/x$f;

.field public static final enum m:Lb7/x$f;

.field public static final enum n:Lb7/x$f;

.field public static final synthetic o:[Lb7/x$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lb7/x$f;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb7/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb7/x$f;->h:Lb7/x$f;

    .line 2
    new-instance v1, Lb7/x$f;

    const-string v3, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb7/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb7/x$f;->i:Lb7/x$f;

    .line 3
    new-instance v3, Lb7/x$f;

    const-string v5, "BUILD_MESSAGE_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb7/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb7/x$f;->j:Lb7/x$f;

    .line 4
    new-instance v5, Lb7/x$f;

    const-string v7, "NEW_MUTABLE_INSTANCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb7/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb7/x$f;->k:Lb7/x$f;

    .line 5
    new-instance v7, Lb7/x$f;

    const-string v9, "NEW_BUILDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb7/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb7/x$f;->l:Lb7/x$f;

    .line 6
    new-instance v9, Lb7/x$f;

    const-string v11, "GET_DEFAULT_INSTANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lb7/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lb7/x$f;->m:Lb7/x$f;

    .line 7
    new-instance v11, Lb7/x$f;

    const-string v13, "GET_PARSER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lb7/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lb7/x$f;->n:Lb7/x$f;

    const/4 v13, 0x7

    new-array v13, v13, [Lb7/x$f;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lb7/x$f;->o:[Lb7/x$f;

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

.method public static valueOf(Ljava/lang/String;)Lb7/x$f;
    .locals 1

    const-class v0, Lb7/x$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb7/x$f;

    return-object p0
.end method

.method public static values()[Lb7/x$f;
    .locals 1

    sget-object v0, Lb7/x$f;->o:[Lb7/x$f;

    invoke-virtual {v0}, [Lb7/x$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb7/x$f;

    return-object v0
.end method
