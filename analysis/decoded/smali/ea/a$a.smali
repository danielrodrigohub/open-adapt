.class public final enum Lea/a$a;
.super Ljava/lang/Enum;
.source "AdaptKitDetectedMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lea/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lea/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lea/a$a;

.field public static final enum i:Lea/a$a;

.field public static final enum j:Lea/a$a;

.field public static final enum k:Lea/a$a;

.field public static final synthetic l:[Lea/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lea/a$a;

    const-string v1, "LACE_PERCENT_LEFT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lea/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lea/a$a;->h:Lea/a$a;

    .line 2
    new-instance v1, Lea/a$a;

    const-string v3, "LACE_PERCENT_RIGHT_REQUIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lea/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lea/a$a;->i:Lea/a$a;

    .line 3
    new-instance v3, Lea/a$a;

    const-string v5, "COLOR_LEFT_REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lea/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lea/a$a;->j:Lea/a$a;

    .line 4
    new-instance v5, Lea/a$a;

    const-string v7, "COLOR_RIGHT_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lea/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lea/a$a;->k:Lea/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lea/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lea/a$a;->l:[Lea/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lea/a$a;
    .locals 1

    const-class v0, Lea/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lea/a$a;

    return-object p0
.end method

.method public static values()[Lea/a$a;
    .locals 1

    sget-object v0, Lea/a$a;->l:[Lea/a$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lea/a$a;

    return-object v0
.end method
