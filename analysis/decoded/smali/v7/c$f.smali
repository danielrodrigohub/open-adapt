.class public final Lv7/c$f;
.super Lv7/c;
.source "EffectType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final c:Lv7/c$f;

.field public static final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/c$f;

    invoke-direct {v0}, Lv7/c$f;-><init>()V

    sput-object v0, Lv7/c$f;->c:Lv7/c$f;

    const v0, 0x7f110105

    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lv7/c$f;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv7/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lv7/c$f;->d:Ljava/lang/String;

    return-object v0
.end method
