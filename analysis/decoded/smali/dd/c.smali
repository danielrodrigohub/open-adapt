.class public final enum Ldd/c;
.super Ljava/lang/Enum;
.source "FileScope.kt"

# interfaces
.implements Lyc/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldd/c;",
        ">;",
        "Lyc/a$c;"
    }
.end annotation


# static fields
.field public static final Companion:Ldd/c$a;

.field public static final enum h:Ldd/c;

.field public static final synthetic i:[Ldd/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ldd/c;

    const-string v1, "Local"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldd/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/c;->h:Ldd/c;

    .line 2
    new-instance v1, Ldd/c;

    const-string v3, "Shared"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldd/c;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ldd/c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ldd/c;->i:[Ldd/c;

    new-instance v0, Ldd/c$a;

    invoke-direct {v0}, Ldd/c$a;-><init>()V

    sput-object v0, Ldd/c;->Companion:Ldd/c$a;

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

.method public static valueOf(Ljava/lang/String;)Ldd/c;
    .locals 1

    const-class v0, Ldd/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldd/c;

    return-object p0
.end method

.method public static values()[Ldd/c;
    .locals 1

    sget-object v0, Ldd/c;->i:[Ldd/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldd/c;

    return-object v0
.end method
