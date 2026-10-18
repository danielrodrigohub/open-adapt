.class public final Lv7/c$d;
.super Lv7/c;
.source "EffectType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final c:Lv7/c$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/c$d;

    invoke-direct {v0}, Lv7/c$d;-><init>()V

    sput-object v0, Lv7/c$d;->c:Lv7/c$d;

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

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "None"

    return-object v0
.end method
