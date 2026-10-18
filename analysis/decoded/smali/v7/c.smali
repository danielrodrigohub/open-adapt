.class public abstract Lv7/c;
.super Ljava/lang/Object;
.source "EffectType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv7/c$e;,
        Lv7/c$f;,
        Lv7/c$c;,
        Lv7/c$d;,
        Lv7/c$b;
    }
.end annotation


# static fields
.field public static final a:Lv7/c$b;

.field public static final b:Lfd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "[",
            "Lv7/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv7/c$b;

    invoke-direct {v0}, Lv7/c$b;-><init>()V

    sput-object v0, Lv7/c;->a:Lv7/c$b;

    sget-object v0, Lv7/c$a;->h:Lv7/c$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lv7/c;->b:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method
