.class public final enum Lcom/nike/adapt/ui/settings/AppIconsActivity$a;
.super Ljava/lang/Enum;
.source "AppIconsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/settings/AppIconsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nike/adapt/ui/settings/AppIconsActivity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

.field public static final enum i:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

.field public static final synthetic j:[Lcom/nike/adapt/ui/settings/AppIconsActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    const-string v1, "Adapt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->h:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    .line 2
    new-instance v1, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    const-string v3, "Jordan"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->i:Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->j:[Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nike/adapt/ui/settings/AppIconsActivity$a;
    .locals 1

    const-class v0, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    return-object p0
.end method

.method public static values()[Lcom/nike/adapt/ui/settings/AppIconsActivity$a;
    .locals 1

    sget-object v0, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->j:[Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    return-object v0
.end method
