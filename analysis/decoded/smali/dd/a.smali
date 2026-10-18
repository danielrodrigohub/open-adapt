.class public final enum Ldd/a;
.super Ljava/lang/Enum;
.source "Bucket.kt"

# interfaces
.implements Lyc/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldd/a;",
        ">;",
        "Lyc/a$c;"
    }
.end annotation


# static fields
.field public static final Companion:Ldd/a$a;

.field public static final enum h:Ldd/a;

.field public static final enum i:Ldd/a;

.field public static final synthetic j:[Ldd/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ldd/a;

    const-string v1, "App"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldd/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldd/a;->h:Ldd/a;

    .line 2
    new-instance v1, Ldd/a;

    const-string v3, "Session"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldd/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldd/a;->i:Ldd/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ldd/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ldd/a;->j:[Ldd/a;

    new-instance v0, Ldd/a$a;

    invoke-direct {v0}, Ldd/a$a;-><init>()V

    sput-object v0, Ldd/a;->Companion:Ldd/a$a;

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

.method public static valueOf(Ljava/lang/String;)Ldd/a;
    .locals 1

    const-class v0, Ldd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldd/a;

    return-object p0
.end method

.method public static values()[Ldd/a;
    .locals 1

    sget-object v0, Ldd/a;->j:[Ldd/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldd/a;

    return-object v0
.end method
