.class public final enum Lh8/d$a;
.super Ljava/lang/Enum;
.source "BigfootOnBoardingPreferenceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh8/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lh8/d$a;

.field public static final enum j:Lh8/d$a;

.field public static final synthetic k:[Lh8/d$a;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lh8/d$a;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const-string v3, "PREF_LEFT_PAIR"

    invoke-direct {v0, v1, v2, v3}, Lh8/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lh8/d$a;->i:Lh8/d$a;

    .line 2
    new-instance v1, Lh8/d$a;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    const-string v5, "PREF_RIGHT_PAIR"

    invoke-direct {v1, v3, v4, v5}, Lh8/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lh8/d$a;->j:Lh8/d$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lh8/d$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lh8/d$a;->k:[Lh8/d$a;

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

    iput-object p3, p0, Lh8/d$a;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh8/d$a;
    .locals 1

    const-class v0, Lh8/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh8/d$a;

    return-object p0
.end method

.method public static values()[Lh8/d$a;
    .locals 1

    sget-object v0, Lh8/d$a;->k:[Lh8/d$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh8/d$a;

    return-object v0
.end method
