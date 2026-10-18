.class public final Lv7/c$a;
.super Lrd/o;
.source "EffectType.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "[",
        "Lv7/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lv7/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/c$a;

    invoke-direct {v0}, Lv7/c$a;-><init>()V

    sput-object v0, Lv7/c$a;->h:Lv7/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lv7/c;

    sget-object v1, Lv7/c$e;->c:Lv7/c$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lv7/c$f;->c:Lv7/c$f;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lv7/c$c;->c:Lv7/c$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lv7/c$d;->c:Lv7/c$d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method
