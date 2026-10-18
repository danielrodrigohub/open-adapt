.class public final Lu7/a$b;
.super Lrd/o;
.source "MigrationPreferenceHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lu7/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu7/a$b;

    invoke-direct {v0}, Lu7/a$b;-><init>()V

    sput-object v0, Lu7/a$b;->h:Lu7/a$b;

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

    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bigfoot_paired_devices"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
