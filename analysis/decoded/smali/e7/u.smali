.class public abstract enum Le7/u;
.super Ljava/lang/Enum;
.source "ToNumberPolicy.java"

# interfaces
.implements Le7/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le7/u;",
        ">;",
        "Le7/v;"
    }
.end annotation


# static fields
.field public static final enum h:Le7/u$a;

.field public static final enum i:Le7/u$b;

.field public static final enum j:Le7/u$c;

.field public static final enum k:Le7/u$d;

.field public static final synthetic l:[Le7/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le7/u$a;

    invoke-direct {v0}, Le7/u$a;-><init>()V

    sput-object v0, Le7/u;->h:Le7/u$a;

    .line 2
    new-instance v1, Le7/u$b;

    const/4 v2, 0x1

    invoke-direct {v1}, Le7/u$b;-><init>()V

    sput-object v1, Le7/u;->i:Le7/u$b;

    .line 3
    new-instance v3, Le7/u$c;

    const/4 v4, 0x2

    invoke-direct {v3}, Le7/u$c;-><init>()V

    sput-object v3, Le7/u;->j:Le7/u$c;

    .line 4
    new-instance v5, Le7/u$d;

    const/4 v6, 0x3

    invoke-direct {v5}, Le7/u$d;-><init>()V

    sput-object v5, Le7/u;->k:Le7/u$d;

    const/4 v7, 0x4

    new-array v7, v7, [Le7/u;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v1, v7, v2

    aput-object v3, v7, v4

    aput-object v5, v7, v6

    .line 5
    sput-object v7, Le7/u;->l:[Le7/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILe7/u$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le7/u;
    .locals 1

    const-class v0, Le7/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le7/u;

    return-object p0
.end method

.method public static values()[Le7/u;
    .locals 1

    sget-object v0, Le7/u;->l:[Le7/u;

    invoke-virtual {v0}, [Le7/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le7/u;

    return-object v0
.end method
