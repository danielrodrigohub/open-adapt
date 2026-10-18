.class public final enum Ldd/b;
.super Ljava/lang/Enum;
.source "FileRetention.kt"

# interfaces
.implements Lyc/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldd/b;",
        ">;",
        "Lyc/a$c;"
    }
.end annotation


# static fields
.field public static final Companion:Ldd/b$a;

.field public static final enum h:Ldd/b;

.field public static final synthetic i:[Ldd/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ldd/b;

    const-string v1, "Temporary"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldd/b;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v1, Ldd/b;

    const-string v3, "Cache"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldd/b;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v3, Ldd/b;

    const-string v5, "Retain"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldd/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldd/b;->h:Ldd/b;

    const/4 v5, 0x3

    new-array v5, v5, [Ldd/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ldd/b;->i:[Ldd/b;

    new-instance v0, Ldd/b$a;

    invoke-direct {v0}, Ldd/b$a;-><init>()V

    sput-object v0, Ldd/b;->Companion:Ldd/b$a;

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

.method public static valueOf(Ljava/lang/String;)Ldd/b;
    .locals 1

    const-class v0, Ldd/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldd/b;

    return-object p0
.end method

.method public static values()[Ldd/b;
    .locals 1

    sget-object v0, Ldd/b;->i:[Ldd/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldd/b;

    return-object v0
.end method
